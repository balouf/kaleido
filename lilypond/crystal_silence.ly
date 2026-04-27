% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Crystal Silence"
	subtitle = ""
 	composer = "Chick Corea"
 	tagline = ""

}

accords = \chords { \partial 4 s4 
  \repeat volta 2 {a1:m e:m f:maj7.11+ b:m7 bes:maj7 a:m
  \alternative {
  {b4:m c d:7sus4 e:7.9- a1:m bes:maj7.11+}
  {s4 d2.:m}
  }
}
e1:7.9+ d:m e1:7.9+ f:maj7 g:7sus4 a:m s
d a:m bes f:m7 c g:m7 b2:7.13- e:7 e:7sus4 e:7
a1:m e:m f:maj7.11+ b:m7 bes:maj7 a:m 
b4:m c d:7sus4 e:7.9- a1:m bes:maj7 b4:m c d:7sus4 e:7.9- a1:m
}

theme = \new Staff {
	\time 4/4
	\tempo  4=72
	\set Staff.midiInstrument = "trumpet"
	\key a \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c'' { 	
 % Type notes here 
\override Score.RehearsalMark.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
\compressEmptyMeasures
% \mark \default
\partial 4 a'4 
\repeat volta 2 {
  g2. e8 b d2 b4. c8 \trio {d4 c b} a4. g8 e2. 4 
  4 d \trio {g c e } d2 c4. d8
  \alternative {
  \volta 1 { e4 d c b8 a16 g a1~2 r4 a'4 \break } % \break 
  \volta 2 {e d c4. a8}
  }
}
  d2. c8 d e4 d c4. a8 d2 c4. d8 \trio {e4 d c} b g 
  \trio {d' c b} a4. f8 a1~2. g'4 \bar "||"\break 
  fis2. a4 e2. g4 d2. f4 c2. es4 b2. d4 a2. c4 g2. fis4 e2. a'4 \bar "||" \break 
  g2. e8 b d2 b4. c8 \trio {d4 c b} a4. g8 e2. 4 
  4 d \trio {g c e } d2 c4. d8 e4 d c b8 a16 g
  a1~2 c4. d8  e4 d c b8 a16 g a1
  \fine
}
}
#(define raggedlast #f)
\include "utils/books.ly"
