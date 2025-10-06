from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess
from collections import defaultdict
from tqdm.auto import tqdm
from datetime import datetime, timezone
from zipfile import ZipFile
import re
from concurrent.futures import ProcessPoolExecutor, as_completed
import argparse

parser = argparse.ArgumentParser()
parser.add_argument("-l", "--lilypond", default="lilypond", help="path to Lilypond executable")
parser.add_argument("-d", "--dest", default="build", help="destination folder")
parser.add_argument("-s", "--source", default="lilypond", help="source folder")
args = parser.parse_args()
lily = args.lilypond
dest = args.dest
source = args.source


def run_lily(file, lily, dest):
    return subprocess.run(
        f'{lily} -o {str(dest)} -dno-point-and-click {str(file)}',
        shell=True,
        stdout=subprocess.DEVNULL,
        stderr=subprocess.DEVNULL,
        universal_newlines=True
    )


def run_everything(lily, source, dest):
    rtitle = re.compile(r'\Wtitle\s*=\s*"(.*)"')
    rbook = re.compile(r'\\bookOutputName\s+"(.*)"')
    rauthor = re.compile(r'\Wcomposer\s*=\s*"(.*)"')

    input_files = [file for file in Path(source).glob('*.ly')]
    stem2name = dict()
    name2time = dict()
    name2author = dict()
    for file in input_files:
        mtime = datetime.fromtimestamp(file.stat().st_mtime, tz=timezone.utc).strftime('%Y-%m-%d')
        with open(file, encoding='utf8') as f:
            source = f.read()
            title = rtitle.findall(source)
            book = rbook.findall(source)
            author = rauthor.findall(source)[0]
            if len(title)-len(book) != 1:
                raise ValueError(f"File {file} has not the correct number of titles / outputnames.")
            stem2name[file.stem] = title[0]
            name2time[title[0]] = mtime
            name2author[title[0]] = author
            for name, stem in zip(title[1:], book):
                stem2name[stem] = name
                name2time[name] = mtime
                name2author[name] = author

    dest = Path(dest)
    dest.mkdir(exist_ok=True)
    for file in dest.glob('*'):
        file.unlink()

    with ProcessPoolExecutor() as executor:
        futures = [
            executor.submit(run_lily, file, lily, dest)
            for file in input_files
        ]
        for future in tqdm(as_completed(futures), total=len(futures)):
            process = future.result()


    archives = defaultdict(list)
    names = defaultdict(dict)
    for file in dest.glob('*'):
        if "lilypond-tmp" in file.stem:
            continue
        if file.suffix in ['.mid', '.midi']:
            suffix = 'Midi'
        elif '--' not in file.stem:
            suffix = 'Ut'
        else:
            suffix = file.stem.split('--')[1]
        name = stem2name[file.stem.split('--')[0]]
        names[name][suffix] = file.name
        archives[suffix].append(file.name)
    suffixes = ['Ut'] + sorted({f.stem.split('--')[1] for f in dest.glob('*--*.pdf')}) + ['Midi']
    for name, versions in names.items():
        names[name] = {suf: versions[suf] for suf in suffixes if suf in versions}
    for extension, files in archives.items():
        with ZipFile(dest / f'{extension}.zip', 'w') as myzip:
            for file in files:
                myzip.write(filename=str(dest / file), arcname=file)


    partition_template = """
    <tr>
    <td>
    <span class="sheet-item">
            <strong>%(title)s</strong>
    </span>
    </td><td>
    <span class="download-links">
    %(links)s
    </span>
    </td><td>%(author)s
    </td><td>%(mtime)s</td></tr>
    """

    link_template = '<a href="%(file)s" target="_blank">%(version)s</a>'

    partitions = []
    for title in sorted(names.keys()):
        versions = names[title]
        links = []
        for version, file in versions.items():
            if version == 'Ut':
                htitle = link_template % {'file': file, 'version': title}
            else:
                links.append(link_template % {'file': file, 'version': version})
        links = " | ".join(links)
        # links = " | ".join(link_template % {'file': file, 'version': version} for version, file in versions.items())
        partitions.append(partition_template % {'title': htitle, 'links': links, 'mtime': name2time[title],
                                                'author': name2author[title]})

    html_partitions = '\n'.join(partitions)

    html_archives = " | ".join(link_template % {'file': f"{version}.zip", 'version': version} for version in suffixes)

    html = """
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Partitions Kaleido</title>
        <style>
            body { font-family: Arial, sans-serif; margin: 20px; }
            h1 { text-align: center; }
            .sheet-list { max-width: 800px; margin: auto; }
            .sheet-item { padding: 10px; border-bottom: 1px solid #ddd; }
            .download-links { margin-top: 5px; }
            a { text-decoration: none; color: blue; }
            a:hover { text-decoration: underline; }
            table {
                width: 100%%;
                border-collapse: collapse;
            }
            th, td {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: left;
            }
            th {
                cursor: pointer;
                background-color: #f2f2f2;
            }
            th.sort-asc::after {
                content: " ▲";
            }
            th.sort-desc::after {
                content: " ▼";
            }
           /* Alternate row colors */
            #partitionTable tbody tr:nth-child(even) {
                background-color: #f9f9f9;
            }
            
            #partitionTable tbody tr:nth-child(odd) {
                background-color: #ffffff;
            }
            
            /* Highlight row on mouse hover */
            #partitionTable tbody tr:hover {
                background-color: #dde8ff;
            }

        </style>
    </head>
    <body>
    
    <h1>Partitions Kaleido</h1>
    
    <h2> Archives ZIP </h2>
    <div class="download-links">
    %s
    </div>
    
    <h2> Partitions individuelles </h2>
    
        <table id="partitionTable">
            <thead>
                <tr>
                    <th data-sort="name">Name</th>
                    <th data-sort="alt">Alt files</th>
                    <th data-sort="author">Author</th>
                    <th data-sort="date">Last Modification</th>
                </tr>
            </thead>
            <tbody>
                %s
            </tbody>
        </table>
    
        <script>
        document.addEventListener('DOMContentLoaded', () => {
          const table = document.getElementById('partitionTable');
          const headers = table.querySelectorAll('th');
        
          headers.forEach(header => {
            // Skip non-sortable column
            if (header.dataset.sort === 'alt') return;
        
            header.addEventListener('click', () => {
              const sortType = header.dataset.sort;
        
              // If header has no direction yet, choose default per column
              const hasDirection = header.classList.contains('sort-asc') || header.classList.contains('sort-desc');
              const nextAsc = hasDirection
                ? header.classList.contains('sort-desc') // toggle
                : (sortType !== 'date');                 // default: date -> desc, others -> asc
        
              sortTable(table, sortType, nextAsc);
        
              // Update indicator classes
              headers.forEach(h => h.classList.remove('sort-asc', 'sort-desc'));
              header.classList.toggle('sort-asc', nextAsc);
              header.classList.toggle('sort-desc', !nextAsc);
            });
          });
        });
        
        function sortTable(table, type, asc) {
          const tbody = table.querySelector('tbody');
          const rows = Array.from(tbody.rows);
        
          rows.sort((rowA, rowB) => {
            let valA, valB;
            switch (type) {
              case 'name':
                valA = rowA.cells[0].textContent.trim();
                valB = rowB.cells[0].textContent.trim();
                break;
              case 'author':
                valA = rowA.cells[2].textContent.trim();
                valB = rowB.cells[2].textContent.trim();
                break;
              case 'date':
                valA = new Date(rowA.cells[3].textContent.trim());
                valB = new Date(rowB.cells[3].textContent.trim());
                break;
              default:
                valA = '';
                valB = '';
            }
            if (valA > valB) return asc ? 1 : -1;
            if (valA < valB) return asc ? -1 : 1;
            return 0;
          });
        
          rows.forEach(row => tbody.appendChild(row));
        }
        </script>
    </body>
    </html>
    """ % (html_archives, html_partitions)

    with open(dest / 'index.html', 'wt', encoding='utf8') as f:
        f.write(html)

if __name__ == '__main__':
    run_everything(lily, source, dest)