% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
  title = "Escapade" 
  composer = "Kenny Dorham"
  tagline = ""

}


accords = \chords {
  \repeat percent 4 {s4. c:m7 s4 s4. f:7 s4  }
  \repeat volta 2 {
  c1:m7 f:7.9- bes:m7 es:7.9-
  aes:maj7 des:7 ges:maj7 f:7
  es:m7 es:m6 es:m7 es:m6
  es:m9 s2 aes:7 des1:maj7 f:7.9-.9+ 
  es:m7 es:m6 es:m7 es:m6
  }
}

theme = \new Staff {
  \time 4/4
  \tempo 4 = 156 
  \set Staff.midiInstrument = "trumpet"
  \key bes \major
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' { 	
    % Type notes here 
    \compressEmptyMeasures
    \repeat percent 4 {r4 r8 bes'8~ 2 r4 r8 a8~ 2}
    \break
    \repeat volta 2 {
      a2~ \times 2/3 {8 g d'} \times 2/3 {c a f}
      ges2~ \times 2/3 {8 f ges} \times 2/3 {a d r}
      c2~ \times 2/3 {8 bes es} \times 2/3 {c bes f}
      e2~ \times 2/3 {8 es e} \times 2/3 {g c r}
      \break
      bes2.~ \times 2/3 {8 es, f}
      g2.~ \times 2/3 {8 des es}
      f2.~ \times 2/3 {8 c des} es4 r c'8 des aes' 
      f~ 
      \break
      1~ 2.. 8~ 1~ 4 r \times 2/3 {c des es}
      \break
      f2 \times 2/3 {r4 es8 r c ges}
      bes2 \times 2/3 {r4 es8 r c f,}
      aes2. g4 ges f aes \times 2/3 {r8 f es}
      \break
      <ges,~ des' f~>1 <ges c f>
      r r
    }
  }
}

\include "utils/books.ly"

