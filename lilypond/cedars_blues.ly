% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Cedar's Blues" 
 	composer = "Cedar Walton"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {bes1:7 s bes:7 s
	es:7 s bes:7 s 
	s s s s
		s s s s2 b:7.9+}
		\repeat volta 2 {
		bes1:7 es:7 bes:7 bes:7
		es:7 es:7 bes:7 g:7
		c:m f:7 bes:7 c2:m f:7}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 96 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
	\tuplet 3/2 {bes'8 c bes} a bes c bes a bes
	d4 f8 c r d r f,~
	f4 g8 f bes4 c8 bes
	d4 bes8 aes r <des aes f d>-> r <es bes g e>->~
	<es bes g e>1~ <es bes g e>2 r8 <aes, es c a> r <bes f d b>~
	<bes f d b>1~ <bes f d b>
	<f a c>2 <e gis b>8( <f a c>)-. r <e gis b>->~
	<e gis b>2 <es g bes>8( <e gis b>)-. r <es g bes>->~
	<es g bes>2 <d fis a>8( <es g bes>)-. r <d fis a>->~
	<d fis a>1
	<des f aes>2 <c e g>8( <des f aes>)-. r <c e g>->~
	<c e g>2 <b dis fis>8( <c e g>)-. r <b dis fis>->~
	<b dis fis>2 <bes d f>8( <b dis fis>)-. r <bes d f>->~
	<bes d f>4 <dis, a' d!>-^~ <dis a' d>2
}
\break
\repeat volta 2 {s1 s s s
\break
s s s s
\break
s s s s}
	}
}


\include "utils/books.ly"