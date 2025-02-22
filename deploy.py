from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess
from collections import defaultdict
from tqdm.auto import tqdm
from zipfile import ZipFile
import re

rtitle = re.compile(r'\Wtitle\s*=\s*"(.*)"')
rbook = re.compile(r'\\bookOutputName\s+"(.*)"')

input_files = [file for file in Path('lilypond').glob('*.ly')]
stem2name = dict()
for file in input_files:
    with open(file, encoding='utf8') as f:
        source = f.read()
        title = rtitle.findall(source)
        book = rbook.findall(source)
        if len(title)-len(book) != 1:
            raise ValueError(f"File {file} has not the correct number of titles / outputnames.")
        stem2name[file.stem] = title[0]
        for name, stem in zip(title[1:], book):
            stem2name[stem] = name

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
    <div class="sheet-item">
        <strong>%(title)s</strong>
        <div class="download-links">
%(links)s
        </div>
    </div>
"""

link_template = '<a href="%(file)s">%(version)s</a>'

partitions = []
for title in sorted(names.keys()):
    versions = names[title]
    links = " | ".join(link_template % {'file': file, 'version': version} for version, file in versions.items())
    partitions.append(partition_template % {'title': title, 'links': links})

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
    </style>
</head>
<body>

<h1>Partitions Kaleido</h1>

<h2> Archives ZIP </h2>
<div class="download-links">
%s
</div>

<h2> Partitions individuelles </h2>
%s
""" % (html_archives, html_partitions)

with open(dest / 'index.html', 'wt', encoding='utf8') as f:
    f.write(html)
