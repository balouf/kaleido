% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 



\header {
	title = "Tenor Madness" 
 	composer = "Sonny Rollins"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2 {
	bes1:7 % un accord
	\parenthesize es:7 % un deuxiÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¨me
	bes:7 s es:7 s bes:7 g:7.9+
	c:m f:7 bes2:7 g:7.9+ c:7 f:7.9+
	}
	\break
	\repeat volta 2 {
	bes1:7 % un accord
	\parenthesize es:7 % un deuxiÃƒÆ’Ã†â€™Ãƒâ€šÃ‚Â¨me
	bes:7 s \break es:7 s bes:7 g:7.9+ \break
	c:m f:7 bes2:7 g:7.9+ c:7 f:7.9+
	}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 220
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 d'8
\repeat volta 2 {
	r bes4-. g8 bes4-. r8 des
	r bes4-. g8 bes4-. r8 d
	r bes4-. g8( bes c bes g
	bes c bes bes) r4 r8 des
	r bes4-. g8 bes4-. r8 des
	r bes4-. g8 bes4-. r8 d
	r bes4-. g8( bes c bes g
	bes c bes bes) r4 r8 c
	r g4-. c8( b g es c
	bes' g gis a) r4 r8 d
	r bes4-. g8( bes c bes \parenthesize g
	bes c bes bes) r4 r8 \parenthesize d
}
\repeat volta 2 {R1*12}
	}
}

theme = \staffViolon

\include "utils/books.ly"
