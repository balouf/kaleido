% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
  title = "Love for Sale" 
  composer = "Cole Porter"
  tagline = ""

}


accords = \chords {
  es1:maj7 s bes:maj7.3- s
  es1:maj7 s bes:maj7.3- s
  es:maj7 es2:m7 d:7 des1 des2:m7 ges:7
  c1:m7.5- b:7 bes:m s

  es1:maj7 s bes:maj7.3- s
  es1:maj7 s bes:maj7.3- s
  es:maj7 es2:m7 d:7 des1 des2:m7 ges:7
  c1:m7.5- b:7 bes:m s
  
  es:m7 aes:7 des2 es:m7 f:m7 e:7
  es1:m7 aes:7 des2 es:m7 f:m7 ges:maj7
  f:m7 bes:7 b:7 bes:7 es1:m6 es:m7
  g2:m7.5- c:7 g2:m7.5- c:7 fis:m7 b:7 f:m7.5- e:7

  es1:maj7 s bes:maj7.3- s
  es1:maj7 s bes:maj7.3- s
  es:maj7 es2:m7 d:7 des1 des2:m7 ges:7
  c1:m7.5- b:7 bes:m s

}

theme = \new Staff {
  \time 2/2
  \tempo 2 = 96 
  \set Staff.midiInstrument = "trumpet"
  \key bes \major
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' { 	
    % Type notes here 
    \compressEmptyMeasures
    bes'1~ 4 r g2 f1~ 2. r4 
    r bes8 8 4 4 4 2 g4 f1~ 1 \break
    r8 bes4. 4 4 8 c4 8~ 2 r8 aes4. 4 4 8 ges4 8~ 2
    f1~ 2 des bes1~ 2. r4 \break \bar "||"
    bes'1~ 4 r g2 f1~ 2. r4 
    r bes8 8 4 4 es c bes g f1~ 2. r4 \break
    r8 bes4. 4 4 8 c4 8~ 2 r8 des4. 4 4 \times 2/3 {des a aes} ges2
    f1~ 2 des bes1~ 2. r4 \break \bar "||"
    r bes8 c des4 es f4. es8 2 r4 c \times 2/3 {des es f} aes1
    r4 bes,8 c des4 es f es es2 r8 c4. des8 es f4 bes1
    r4 bes,8 c d4 f ges f f2 r4 d \times 2/3 {es f ges} c bes bes2
    des c des c r4 b8 8 4 4 2 bes \break \bar "||"
    bes1~ 2 g f1~ 2. r4 r bes8 8 4 4 4 2 g4 f1~ 2. r4
    r8 bes4. 4 4 8 c4 8~ 2 des4 r4 8 4 8 des d es8 8~ 2
    f1~ 2 des bes1~  2. r4 \bar "|."
  }
}

\include "utils/books.ly"

