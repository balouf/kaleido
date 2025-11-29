% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Softly As A Morning Sunrise" 
 	composer = "O. Hammerstein"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {
  c1:m7 d2:m7.5- g:7 c1:m7 f:m7\break
  c1:m7 d2:m7.5- g:7.9- c1:m7
}
\alternative {{d2:m7.5- g:7}
              {f2:m7 bes:7}}\break
es1:maj7 s2 f:m7 c1:7.9- c1:7.9-\break
f:m7 f:m7 f:m7 g:7.9-
\break
c1:m7 d2:m7.5- g:7 c1:m7 f:m7 \break
c1:m7 d2:7.5- g:7.9- c1:m7 c:m7
\break
\repeat volta 2 {
  c1:m7 d2:m7.5- g:7 c1:m7 f:m7
  c1:m7 d2:m7.5- g:7.9- c1:m7
}
\alternative {{d2:m7.5- g:7}
              {f2:m7 bes:7}}\break
es1:maj7 s2 f:m7 c1:7.9- c1:7.9-
f:m7 f:m7 f:m7 g:7.9-
\break
c1:m7 d2:m7.5- g:7 c1:m7 f:m7
c1:m7 d2:7.5- g:7.9- c1:m7 c:m7}


voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\repeat volta 2 {
  c'2 g r8 f g f g4 f
  c'2 es, r8 d es d es4 d
  g2 c, r8 g' aes g es4 d
  c1~
}
\alternative {
  {c4 r r2}
  {\tuplet 3/2 {c4\repeatTie d es} \tuplet 3/2 {f g aes}}
}
bes2 es, r8 bes' c bes c4 bes
bes2 e,~\tuplet 3/2 {e4 e f} \tuplet 3/2 {g aes bes}
c2 f, r8 c' d c d4 c d1 r
\bar "||"
c2 g r8 f g f g4 f
c'2 es, r8 d es d es4 d
g2 c, r8 g' aes g es4 d
c1~ c
\bar "|."
\repeat volta 2 {s1 s s s s s s}
\alternative {{s}{s}} \bar "||"
s s s s s s s s
s s s s s s s s
\bar "|."
}


staffViolon = \new Staff {
	\time 2/2
	\tempo 2 = 108
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme = \staffViolon

\include "utils/books.ly"
