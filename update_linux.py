#!/usr/bin/python3


import subprocess
from datetime import datetime
from pathlib import Path


def main():
    lily = Path(r"/usr/bin/lilypond")

    sources = Path("lilypond")
    for file in sources.glob("*"):
        update = False
        is_lily = file.is_file() and file.suffix == ".ly"
        if is_lily:
            pdf = "Ut" / Path(f"{file.stem}.pdf")
            has_pdf = pdf.exists()
            update = not has_pdf
            if has_pdf:
                pdf_date = datetime.fromtimestamp(pdf.stat().st_mtime)
                ly_date = datetime.fromtimestamp(file.stat().st_mtime)
                if pdf_date < ly_date:
                    update = True
        if update:
            print(f"{file} to be compiled!")
            subprocess.run(
                f"{lily.as_posix()} -dno-point-and-click {file.as_posix()}",
                shell=True,
                check=False,
                stdout=subprocess.PIPE,
                universal_newlines=True,
            )
            for o in Path(".").glob("*"):
                if o.is_file():
                    suf = o.suffix
                    stem = o.stem
                    if suf == ".pdf":
                        d = stem.split("--")
                        stem = d[0]
                        d = "Ut" if len(d) < 2 else d[-1]
                    elif o.suffix == ".mid":
                        d = "midi"
                    else:
                        continue
                    dest = Path(d)
                    dest.mkdir(exist_ok=True)
                    o.replace(dest / f"{stem}{suf}")


if __name__ == "__main__":
    main()
