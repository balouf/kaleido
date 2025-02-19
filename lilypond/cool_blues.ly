% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Cool Blues" 
 	composer = "Charlie Parker"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	bes1 es:7 bes bes:7
	es:7 es:7 bes d2:m7 des:m7
	c1:m7 f:7 bes s
	}
	\repeat volta 2 {
	bes1 es:7 bes bes:7
	es:7 es:7 bes d2:m7 des:m7
	c1:m7 f:7 bes s
	}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 174
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2
{
\tuplet 3/2 {f8 g f} d es f bes a g
f es c g d'4 f8 c~
c r c2.~ c r4  \break
\tuplet 3/2 {f8 g f} des es f bes a g
f es c g d'4 f8 c~
c r c2.~ c r4  \break
\tuplet 3/2 {f8 g f} d es f bes a g
f es c g d'4 f8 c~
c r c2.~ c r4
}
\break
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {\repeat unfold 3 {s1 s s s \break}}
	}
}


\include "utils/books.ly"