#!/usr/bin/env python
# coding: utf-8

# In[72]:


from pathlib import Path
import subprocess
from datetime import datetime

lily = Path(r"c:\Program Files (x86)\lilypond-2.24.4\bin\lilypond.exe")

sources = Path("lilypond")
for f in sources.glob("*"):
    update = False
    is_lily =  f.is_file() and f.suffix == ".ly"
    if is_lily:
        pdf = "Ut" / Path(f"{f.stem}.pdf")
        has_pdf = pdf.exists()
        update = not has_pdf
        if has_pdf:
            pdf_date = datetime.fromtimestamp(pdf.stat().st_mtime)
            ly_date = datetime.fromtimestamp(f.stat().st_mtime)
            if pdf_date < ly_date:
                update = True
    if update:
        print(f"{f} to be compiled!")
        process = subprocess.run([str(lily), '-dno-point-and-click', str(f)],
                                 shell=True,
                                 stdout=subprocess.PIPE, 
                                 universal_newlines=True)
        for o in Path(".").glob('*'):
            if o.is_file():
                suf = o.suffix
                stem = o.stem
                if suf == ".pdf":
                    d = stem.split("--")
                    stem = d[0]
                    d = "Ut" if len(d)<2 else d[-1]
                elif o.suffix == ".mid":
                    d = "midi"
                else:
                    continue
                dest = Path(d)
                dest.mkdir(exist_ok=True)
                o.replace(dest / f"{stem}{suf}")  

