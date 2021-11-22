% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Saint-Thomas" 
 	composer = "Sonny Rollins"
 	tagline = ""

}


accords = \chords {
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÂ¨me
\repeat unfold 2 {
c1 e2:m a:7 d:m g:7 c1
c e2:m a:7 d:m g:7 c1
e1:m7.5- a:7.9+ d:m g:7
c2 c:7 f fis:7- c/g g:7 c1
}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 240 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r4 g'8 c r b r a
g4 a e f g c b c r1
\break 
r4 g8 c r b r a
g4 a e f g c b c r1
\break 
e2-- f4.-- g8 r1 f2-- e4.-- d8 r1
\break 
e2-- d-- c4.-- a8--~ a4 r
g c b c r1
\break 
\bar "||"
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
