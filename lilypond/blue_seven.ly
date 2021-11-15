% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 



\header {
	title = "Blue Seven" 
 	composer = "Sonny Rollins"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	bes1:7 es:7 bes:7 s
	\break
	es:7 s bes:7 s
	\break
	f:7 es:7 bes:7 s
}
	\break
	\repeat volta 2 {
	bes1:7 es:7 bes:7 s
	\break
	es:7 s bes:7 s
	\break
	f:7 es:7 bes:7 s
}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 178 
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
	d'4-. aes2 r4
	r2 aes8( e f g aes e)-. r4 e-. r r1
	c'8( des a4)-. r2
	r2 g8( e f g aes e)-. r4 e-. r r2 r8 d( es[ d')]-.
	r8 b~ b2 r4
	r2 g8( e f g aes e)-. r4 e-. r r1
}
\repeat volta 2 {R1*12}
	}
}

\include "utils/books.ly"