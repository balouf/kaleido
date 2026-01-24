from pathlib import Path
from tempfile import TemporaryDirectory
import subprocess
import shutil
from collections import defaultdict
from tqdm.auto import tqdm
from datetime import datetime, timezone, date
from zipfile import ZipFile
import re
from concurrent.futures import ThreadPoolExecutor, as_completed
import argparse
from html import escape
import os
import yaml
import markdown
from PIL import Image


# =============================================================================
# CLI Arguments
# =============================================================================

parser = argparse.ArgumentParser(description="Build Kaleido websites")
parser.add_argument("-l", "--lilypond", default="lilypond", help="path to Lilypond executable")
parser.add_argument("-d", "--dest", default="build", help="destination folder")
parser.add_argument("-s", "--source", default="lilypond", help="source folder for lilypond files")
parser.add_argument("-c", "--content", default="content", help="content folder for public site")
parser.add_argument("-j", "--jobs", type=int, default=os.cpu_count(), help="number of parallel jobs (default: #CPU)")
parser.add_argument("--internal-only", action="store_true", help="only build internal site")
parser.add_argument("--public-only", action="store_true", help="only build public site")
parser.add_argument("--logo", default="kaleido.png", help="path to logo image")
args = parser.parse_args()


# =============================================================================
# Internal Site Functions (Sheet Music)
# =============================================================================

def run_lily(file, lily, dest):
    with TemporaryDirectory() as tmpdir:
        result = subprocess.run(
            [lily, '-o', tmpdir, '-dno-point-and-click', str(file.resolve())],
            cwd=file.parent,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True
        )
        if result.returncode != 0:
            raise RuntimeError(f"LilyPond failed on {file}:\n{result.stderr}")
        for out_file in Path(tmpdir).glob('*'):
            if out_file.suffix in ['.pdf', '.mid', '.midi']:
                shutil.copy2(out_file, dest / out_file.name)


def build_internal_site(lily, source, dest, jobs=1):
    """Build the internal site with sheet music (partitions)."""
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
            source_content = f.read()
            title = rtitle.findall(source_content)
            book = rbook.findall(source_content)
            author_matches = rauthor.findall(source_content)
            if not author_matches:
                raise ValueError(f"File {file} is missing 'composer' field")
            author = author_matches[0]
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
    if dest.exists():
        shutil.rmtree(dest)
    dest.mkdir(parents=True, exist_ok=True)

    errors = []
    max_retries = 3
    to_process = [(file, 1) for file in input_files]
    with ThreadPoolExecutor(max_workers=jobs) as executor:
        while to_process:
            with tqdm(total=len(to_process)) as pbar:
                futures = {
                    executor.submit(run_lily, file, lily, dest): (file, attempt)
                    for file, attempt in to_process
                }
                to_process = []
                for future in as_completed(futures):
                    file, attempt = futures[future]
                    try:
                        future.result()
                    except Exception as e:
                        if attempt < max_retries:
                            to_process.append((file, attempt + 1))
                        else:
                            errors.append(f"{file}: {e}")
                    pbar.update(1)
    if errors:
        raise RuntimeError(f"Build failed with {len(errors)} error(s):\n" + "\n".join(errors))

    archives = defaultdict(list)
    names = defaultdict(dict)
    for file in dest.glob('*'):
        if "lilypond-tmp" in file.stem:
            continue
        if file.suffix not in ['.pdf', '.mid', '.midi']:
            continue
        stem = file.stem.split('--')[0]
        if file.suffix in ['.mid', '.midi']:
            suffix = 'Midi'
        elif '--' not in file.stem:
            suffix = 'Ut'
        else:
            suffix = file.stem.split('--')[1]
        if stem not in stem2name:
            raise KeyError(f"Unexpected file '{file.name}': stem '{stem}' not found in source files")
        name = stem2name[stem]
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
                htitle = link_template % {'file': escape(file), 'version': escape(title)}
            else:
                links.append(link_template % {'file': escape(file), 'version': escape(version)})
        links = " | ".join(links)
        partitions.append(partition_template % {'title': htitle, 'links': links, 'mtime': name2time[title],
                                                'author': escape(name2author[title])})

    html_partitions = '\n'.join(partitions)
    html_archives = " | ".join(link_template % {'file': escape(f"{version}.zip"), 'version': escape(version)} for version in suffixes)

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


# =============================================================================
# Public Site Functions
# =============================================================================

def load_config(content_dir):
    """Load configuration from config.yaml."""
    config_path = Path(content_dir) / "config.yaml"
    with open(config_path, encoding='utf8') as f:
        return yaml.safe_load(f)


def load_events(content_dir):
    """Load events from events.yaml, filtering out past events."""
    events_path = Path(content_dir) / "events.yaml"
    with open(events_path, encoding='utf8') as f:
        data = yaml.safe_load(f)

    today = date.today()
    future_events = []
    for event in data.get('events', []):
        event_date = datetime.strptime(event['date'], '%Y-%m-%d').date()
        if event_date >= today:
            future_events.append(event)

    # Sort by date
    future_events.sort(key=lambda e: e['date'])
    return future_events


def load_markdown(content_dir, lang):
    """Load and parse markdown content with frontmatter."""
    md_path = Path(content_dir) / lang / "index.md"
    with open(md_path, encoding='utf8') as f:
        content = f.read()

    # Parse frontmatter
    if content.startswith('---'):
        parts = content.split('---', 2)
        if len(parts) >= 3:
            frontmatter = yaml.safe_load(parts[1])
            body = parts[2].strip()
        else:
            frontmatter = {}
            body = content
    else:
        frontmatter = {}
        body = content

    # Convert markdown to HTML
    md = markdown.Markdown()
    html_body = md.convert(body)

    return {
        'frontmatter': frontmatter,
        'body': html_body
    }


def generate_favicon(logo_path, dest):
    """Generate favicon.ico from logo PNG."""
    img = Image.open(logo_path)
    # Convert to RGBA if necessary
    if img.mode != 'RGBA':
        img = img.convert('RGBA')
    # Create multiple sizes for ICO
    img_32 = img.copy()
    img_32.thumbnail((32, 32), Image.Resampling.LANCZOS)
    img_16 = img.copy()
    img_16.thumbnail((16, 16), Image.Resampling.LANCZOS)
    # Save as ICO with multiple sizes
    img_32.save(dest / "favicon.ico", format="ICO", sizes=[(16, 16), (32, 32)])


def generate_css(theme):
    """Generate CSS with theme colors."""
    return f"""
:root {{
    --primary: {theme['primary']};
    --secondary: {theme['secondary']};
    --accent: {theme['accent']};
    --background: {theme['background']};
    --text: {theme['text']};
}}

* {{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}}

html {{
    scroll-behavior: smooth;
}}

body {{
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: var(--background);
    color: var(--text);
    line-height: 1.6;
}}

/* Navigation */
.nav {{
    position: fixed;
    top: 0;
    right: 0;
    padding: 1rem;
    z-index: 1000;
    background: linear-gradient(to bottom, rgba(26, 26, 26, 0.95), transparent);
}}

.lang-selector {{
    display: flex;
    gap: 0.5rem;
}}

.lang-selector a {{
    color: var(--text);
    text-decoration: none;
    padding: 0.3rem 0.8rem;
    border: 1px solid var(--accent);
    border-radius: 4px;
    transition: all 0.3s ease;
}}

.lang-selector a:hover,
.lang-selector a.active {{
    background-color: var(--accent);
    color: var(--background);
}}

/* Hero Section */
.hero {{
    min-height: 60vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    padding: 1.5rem;
    padding-top: 3rem;
}}

.hero-logo {{
    max-width: 250px;
    width: 70%;
    margin-bottom: 1rem;
}}

.hero h1 {{
    color: var(--primary);
    font-size: 2.5rem;
    margin-bottom: 0.5rem;
}}

.tagline {{
    color: var(--accent);
    font-size: 1.3rem;
    font-style: italic;
}}

/* Sections */
section {{
    padding: 2rem 1.5rem;
    max-width: 900px;
    margin: 0 auto;
}}

section h2 {{
    color: var(--primary);
    font-size: 1.8rem;
    margin-bottom: 1rem;
    border-bottom: 2px solid var(--secondary);
    padding-bottom: 0.3rem;
}}

section p {{
    margin-bottom: 0.8rem;
}}

/* Members Grid */
.members-grid {{
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 1rem;
    margin-top: 1rem;
}}

.member-card {{
    background: rgba(255, 255, 255, 0.05);
    padding: 1rem;
    border-radius: 8px;
    text-align: center;
    border: 1px solid var(--accent);
    transition: transform 0.3s ease;
}}

.member-card:hover {{
    transform: translateY(-3px);
    border-color: var(--primary);
}}

.member-card h3 {{
    color: var(--primary);
    margin-bottom: 0.3rem;
    font-size: 1rem;
}}

.member-card p {{
    color: var(--accent);
    font-size: 0.85rem;
}}

/* Music Section */
.soundcloud-embed {{
    margin-top: 1rem;
    border-radius: 8px;
    overflow: hidden;
}}

.soundcloud-embed iframe {{
    width: 100%;
    height: 500px;
    border: none;
}}

/* Events */
.events-list {{
    list-style: none;
}}

.event-item {{
    background: rgba(255, 255, 255, 0.05);
    padding: 1.5rem;
    border-radius: 8px;
    margin-bottom: 1rem;
    border-left: 4px solid var(--secondary);
}}

.event-date {{
    color: var(--primary);
    font-weight: bold;
    font-size: 1.1rem;
}}

.event-venue {{
    color: var(--accent);
    margin: 0.5rem 0;
}}

/* Contact */
.contact-email {{
    display: inline-block;
    color: var(--primary);
    font-size: 1.3rem;
    text-decoration: none;
    padding: 0.8rem 1.5rem;
    border: 2px solid var(--primary);
    border-radius: 8px;
    transition: all 0.3s ease;
    margin-top: 1rem;
}}

.contact-email:hover {{
    background-color: var(--primary);
    color: var(--background);
}}

/* Footer */
footer {{
    text-align: center;
    padding: 1.5rem;
    border-top: 1px solid rgba(255, 255, 255, 0.1);
    color: rgba(245, 245, 245, 0.6);
    font-size: 0.9rem;
}}

/* Responsive */
@media (max-width: 768px) {{
    .hero {{
        min-height: 50vh;
    }}

    .hero h1 {{
        font-size: 2rem;
    }}

    .tagline {{
        font-size: 1.1rem;
    }}

    section {{
        padding: 1.5rem 1rem;
    }}

    section h2 {{
        font-size: 1.4rem;
    }}

    .members-grid {{
        grid-template-columns: repeat(3, 1fr);
    }}

    .soundcloud-embed iframe {{
        height: 400px;
    }}
}}

@media (max-width: 480px) {{
    .hero-logo {{
        max-width: 180px;
    }}

    .hero h1 {{
        font-size: 1.6rem;
    }}

    .tagline {{
        font-size: 1rem;
    }}

    .members-grid {{
        grid-template-columns: repeat(2, 1fr);
    }}

    .member-card {{
        padding: 0.8rem;
    }}

    .soundcloud-embed iframe {{
        height: 350px;
    }}

    .contact-email {{
        font-size: 1.1rem;
        padding: 0.6rem 1rem;
    }}
}}
"""


def render_public_page(config, content, events, lang):
    """Render the public HTML page for a given language."""
    fm = content['frontmatter']
    theme = config['theme']
    members = config['members']
    soundcloud_url = config['soundcloud']['playlist_url']
    email = config['contact']['email']
    site_name = config['site']['name']

    other_lang = 'en' if lang == 'fr' else 'fr'
    other_lang_label = 'EN' if lang == 'fr' else 'FR'
    current_lang_label = 'FR' if lang == 'fr' else 'EN'

    # Build members HTML
    members_html = ""
    for member in members:
        instrument = member['instrument'] if lang == 'fr' else member['instrument_en']
        members_html += f"""
        <div class="member-card">
            <h3>{escape(member['name'])}</h3>
            <p>{escape(instrument)}</p>
        </div>
        """

    # Build events HTML
    events_html = ""
    if events:
        events_section_style = ""
        for event in events:
            desc = event.get(f'description_{lang}', event.get('description_fr', ''))
            event_date = datetime.strptime(event['date'], '%Y-%m-%d')
            formatted_date = event_date.strftime('%d/%m/%Y')
            events_html += f"""
            <li class="event-item">
                <div class="event-date">{formatted_date} - {escape(event['time'])}</div>
                <div class="event-venue">{escape(event['venue'])}, {escape(event['city'])}</div>
                <p>{escape(desc)}</p>
            </li>
            """
    else:
        events_section_style = 'style="display: none;"'

    # SoundCloud embed (extract playlist ID from URL for embed)
    soundcloud_embed = f"""
    <div class="soundcloud-embed">
        <iframe
            scrolling="no"
            frameborder="no"
            allow="autoplay"
            src="https://w.soundcloud.com/player/?url={soundcloud_url}&color=%23E8A824&auto_play=false&hide_related=true&show_comments=false&show_user=true&show_reposts=false&show_teaser=false">
        </iframe>
    </div>
    """

    html = f"""<!DOCTYPE html>
<html lang="{lang}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="{escape(fm.get('tagline', ''))}">
    <title>{escape(site_name)}</title>
    <link rel="stylesheet" href="../assets/style.css">
    <link rel="icon" href="../favicon.ico" type="image/x-icon">
</head>
<body>
    <nav class="nav">
        <div class="lang-selector">
            <a href="../fr/" class="{'active' if lang == 'fr' else ''}">FR</a>
            <a href="../en/" class="{'active' if lang == 'en' else ''}">EN</a>
        </div>
    </nav>

    <header class="hero">
        <img src="../assets/logo.png" alt="{escape(site_name)}" class="hero-logo">
        <h1>{escape(site_name)}</h1>
        <p class="tagline">{escape(fm.get('tagline', ''))}</p>
    </header>
        <section id="events" {events_section_style}>
            <h2>{escape(fm.get('events_title', 'Events'))}</h2>
            <ul class="events-list">
                {events_html}
            </ul>
        </section>
    <main>
        <section id="about">
            <h2>{escape(fm.get('about_title', 'About'))}</h2>
            {content['body']}
        </section>

        <section id="members">
            <h2>{escape(fm.get('members_title', 'The Band'))}</h2>
            <div class="members-grid">
                {members_html}
            </div>
        </section>

        <section id="music">
            <h2>{escape(fm.get('music_title', 'Our Music'))}</h2>
            {soundcloud_embed}
        </section>

        <section id="contact">
            <h2>{escape(fm.get('contact_title', 'Contact'))}</h2>
            <a href="mailto:{escape(email)}" class="contact-email">{escape(email)}</a>
        </section>
    </main>

    <footer>
        <p>&copy; {datetime.now().year} {escape(site_name)}. All rights reserved.</p>
    </footer>
</body>
</html>
"""
    return html


def build_public_site(content_dir, dest, logo_path):
    """Build the public showcase website."""
    content_dir = Path(content_dir)
    dest = Path(dest)

    # Create directory structure
    dest.mkdir(parents=True, exist_ok=True)
    (dest / 'fr').mkdir(exist_ok=True)
    (dest / 'en').mkdir(exist_ok=True)
    (dest / 'assets').mkdir(exist_ok=True)

    # Load configuration and content
    config = load_config(content_dir)
    events = load_events(content_dir)

    # Generate assets
    generate_favicon(logo_path, dest)

    # Copy logo
    shutil.copy2(logo_path, dest / 'assets' / 'logo.png')

    # Generate CSS
    css = generate_css(config['theme'])
    with open(dest / 'assets' / 'style.css', 'w', encoding='utf8') as f:
        f.write(css)

    # Generate language pages
    for lang in ['fr', 'en']:
        content = load_markdown(content_dir, lang)
        html = render_public_page(config, content, events, lang)
        with open(dest / lang / 'index.html', 'w', encoding='utf8') as f:
            f.write(html)

    # Generate root redirect
    default_lang = config['site'].get('default_language', 'fr')
    redirect_html = f"""<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url=/{default_lang}/">
    <title>Redirecting...</title>
    <script>window.location.href = './{default_lang}/';</script>
</head>
<body>
    <p>Redirecting to <a href="./{default_lang}/">/{default_lang}/</a>...</p>
</body>
</html>
"""
    with open(dest / 'index.html', 'w', encoding='utf8') as f:
        f.write(redirect_html)

    print(f"Public site built successfully in {dest}")


# =============================================================================
# Main
# =============================================================================

def main():
    dest = Path(args.dest)
    dest.mkdir(parents=True, exist_ok=True)

    if not args.public_only:
        print("Building internal site (sheet music)...")
        internal_dest = dest / 'internal'
        build_internal_site(args.lilypond, args.source, internal_dest, args.jobs)
        print(f"Internal site built successfully in {internal_dest}")

    if not args.internal_only:
        print("Building public site...")
        public_dest = dest / 'public'
        logo_path = Path(args.logo)
        if not logo_path.exists():
            print(f"Warning: Logo file '{logo_path}' not found. Skipping public site.")
        else:
            content_dir = Path(args.content)
            if not content_dir.exists():
                print(f"Warning: Content directory '{content_dir}' not found. Skipping public site.")
            else:
                build_public_site(content_dir, public_dest, logo_path)

    # Create root redirect to public site
    root_redirect = """<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url=./public/">
    <title>Kaleido Jazz Group</title>
    <script>window.location.href = './public/';</script>
</head>
<body>
    <p>Redirecting to <a href="./public/">Kaleido Jazz Group</a>...</p>
</body>
</html>
"""
    with open(dest / 'index.html', 'w', encoding='utf8') as f:
        f.write(root_redirect)
    print(f"Root redirect created at {dest / 'index.html'}")


if __name__ == '__main__':
    main()
