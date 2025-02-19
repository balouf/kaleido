% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Mr. Clean" 
 	composer = "Freddie Hubbard"
 	tagline = ""

}


accords = \chords {
  \partial 16 s16
  f1:7 s f:7 s f:7 s r c:7
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 96
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 16 es'16
\repeat volta 2 {
f f es f r4 r c16 bes aes f
bes aes f es~ es2 r8. es'16 \break  
f f es f r8 aes~ aes ges16 fes ges8 fes16 des
es des ces aes~ aes4 bes16 ces bes aes f aes bes ces \break 
f f es f r4 r c16 bes aes f
bes aes f es~ es2. \break
f16_"Solo transition" bes c es f aes f es bes c es aes,~ aes4
es16 es8 es16~ es aes f8^"fine." r4 r8. es'16
}
	}
}

\include "utils/books.ly"