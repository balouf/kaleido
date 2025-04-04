from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess
from collections import defaultdict
from tqdm.auto import tqdm
from datetime import datetime, timezone
from zipfile import ZipFile
import re

rtitle = re.compile(r'\Wtitle\s*=\s*"(.*)"')
rbook = re.compile(r'\\bookOutputName\s+"(.*)"')

input_files = [file for file in Path('lilypond').glob('*.ly')]
stem2name = dict()
name2time = dict()
for file in input_files:
    mtime = datetime.fromtimestamp(file.stat().st_mtime, tz=timezone.utc)
    with open(file, encoding='utf8') as f:
        source = f.read()
        title = rtitle.findall(source)
        book = rbook.findall(source)
        if len(title)-len(book) != 1:
            raise ValueError(f"File {file} has not the correct number of titles / outputnames.")
        stem2name[file.stem] = title[0]
        name2time[title[0]] = mtime
        for name, stem in zip(title[1:], book):
            stem2name[stem] = name
            name2time[name] = mtime

dest = Path('build')
dest.mkdir(exist_ok=True)
for file in dest.glob('*'):
    file.unlink()

for file in tqdm(input_files):
    process = subprocess.run(f'./lilypond-2.24.2/bin/lilypond -o {str(dest)} -dno-point-and-click {str(file)}',
                             shell=True,
                             stdout=subprocess.PIPE, 
                             universal_newlines=True)
archives = defaultdict(list)
names = defaultdict(dict)
for file in dest.glob('*'):
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
<div class="sheet-item">
        <strong>%(title)s</strong>
        <div class="download-links">
%(links)s
</div>
</td><td>%(mtime)s</td></tr>
"""

link_template = '<a href="%(file)s">%(version)s</a>'

partitions = []
for title in sorted(names.keys()):
    versions = names[title]
    links = " | ".join(link_template % {'file': file, 'version': version} for version, file in versions.items())
    partitions.append(partition_template % {'title': title, 'links': links, 'mtime': name2time[title]})

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
                header.addEventListener('click', () => {
                    const sortType = header.dataset.sort;
                    const isAscending = header.classList.contains('sort-asc');
                    sortTable(table, sortType, !isAscending);
                    
                    headers.forEach(h => h.classList.remove('sort-asc', 'sort-desc'));
                    header.classList.toggle('sort-asc', !isAscending);
                    header.classList.toggle('sort-desc', isAscending);
                });
            });
        });

        function sortTable(table, type, asc) {
            const tbody = table.querySelector('tbody');
            const rows = Array.from(tbody.rows);

            rows.sort((rowA, rowB) => {
                let valA = rowA.cells[type === 'name' ? 0 : 1].textContent.trim();
                let valB = rowB.cells[type === 'name' ? 0 : 1].textContent.trim();

                if (type === 'date') {
                    valA = new Date(valA);
                    valB = new Date(valB);
                }

                return (valA > valB ? 1 : -1) * (asc ? 1 : -1);
            });

            tbody.innerHTML = '';
            rows.forEach(row => tbody.appendChild(row));
        }
    </script>
</body>
</html>
""" % (html_archives, html_partitions)

with open(dest / 'index.html', 'wt', encoding='utf8') as f:
    f.write(html)
