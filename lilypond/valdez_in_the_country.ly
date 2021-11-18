% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Valdez in the Country" 
 	composer = "Donnie Hathaway"
 	tagline = ""

}


accords = \chords {
\repeat percent 2 {g1:7sus4}
\repeat percent 2 {f:7sus4}
\repeat percent 2 {g:7sus4}
f:7sus4 es2.:maj7 d4:7.9+
\repeat volta 2 {
g2:7sus4 g:6 c:m11 s16 f4..:7sus4
g2:7sus4 g:6 c:m7 f:7
d8.:7 g:7 c2:7 s8
d4:7 des:maj7 c2:m7
fis4:7 f:7 e2:7
es2.:maj7 d4:7.9+
}
\repeat volta 2 {
g2:7sus4 g:6 c:m7 f:7
g2:7sus4 g:6 c:m7 f:7
}
d:7 g:7 c1:7
d2:7 des:maj7 c1:m7
cis4:m7 fis:7 c:7 f:7 e1:7
es:maj7 d:7.9+
g2:7sus4 g:6 c:m7 f:7
g2:7sus4 g:6 c:m7 f:7
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 96
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat unfold 3 {\repeat percent 2 {r1}}
r1
b'16 b b b-^~ b b8-^ b16-^~ b b c8-> c d\break
\repeat volta 2 {
  f16 e d bes a g g8~ g4 r
  r8. g16 bes-^ c-^ bes-^ c-^~ c bes8.-> d8-^ e-^
  f16 e d bes a g g8~ g4 r
  r8. g16 bes c bes c r8. c16 bes8-> c->
  d d16 d~ d d d8~ d r bes c
  d d16 c~ c bes g8~ g r g16 a bes c
  d8 d16 d~ d d d8~ d r bes c
  d c16 c~ c4 r c8 e
}\break
\repeat volta 2 {
r2 r r r r r r r}\break
r r r1 r2 r r1 \break
r4 r r r r1 r r \break
r2 r r r r r r r
\bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"
