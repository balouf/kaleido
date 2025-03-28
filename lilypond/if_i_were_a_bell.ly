% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "If I Were A Bell"
 	composer = "Frank Loesser"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {s1 s s}
	\alternative {{s}{s}}
	\repeat volta 2 {g:7 c:7 f:maj7 f:maj7
	a:m7.5- d:7 g:7 g2:m c:7}
	\alternative {
	{f1:6 bes2:6 c:7 f1 e2:m7.5- a:7.9-
	d:m d:m/c b:m7.5- e:7 a1:maj7 d:7}
	{f2:6 f:7/a bes:6 b:dim f:6/c bes:7 a:m7.5- d:7.9+
	g1:m c:7 f2:6 s s s % turn-around bes:7 a:m d:7
	}
	}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 126
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {a'2 f g c, c g'}
\alternative {{a f}{<<{a f}{s2 a4 a}>>}}
\break
\repeat volta 2
{
a8 f f f~ f a4 a8
a f g4 a8 f g4
a4. c,8~ c2~
c4 r c' c
c8 a a a~ a c c c~ 
c a a a~ a c a4
d4. g,8~ g2~
g r8 a4 g8
\break
}
%\bar "||"
\alternative {{
f f f4 f f8 bes~
bes2 r8 a4 g8
f f f4 f8 f f c'~ 
c2 r8 a4 g8 
f f f4 f f8 d'8~ 
d2 r8 c d e~
e cis d e~ e cis d e~
e2 a,4 a
\break	}
%\bar "||"
{
	f8 f f4 f f
	bes2 d8 b d4
	c1~ 
	c4 r a a
	a8 f g a~ a f f4
	e' c a d,
	f r r2
	r1
}
}

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

\include "utils/books.ly"