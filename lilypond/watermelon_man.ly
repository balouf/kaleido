% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Watermelon Man" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {
		f1:7 s s s
		bes:7 s f:7 s
		c:7 bes:7 c:7 bes:7
		c:7 bes:7 f:7 s}
		f1:7 s s s
		bes:7 s f:7 s
		c:7 bes:7 c:7 bes:7
		c:7 bes:7 f:7 s
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÂ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 132 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
es'1~ es4 f,8 f <aes c>( <bes d>4)-. f8~
f1~ f2 r
\break 
f'1~ f4 f,8 f <aes c>( <bes d>4)-. f8~
f1~ f2 r
\break 
r4 c'8( c g'4 a aes8 g f d f4 g)-.
r4 c,8( c g'4 a aes8 g f d c4 d)-.
\break 
r4 c8( c g'4 aes 
f)-. f,8 f <aes c>( <bes d>4)-. f8~ f1 r
}
\break 
s s s s
\break
s s s s
\break
s s s s
\break
s s s s
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"