% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Giant Steps" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {
		b2:maj7 d:7 g:maj7 bes:7 es1:maj7 a2:m d:7
	g:maj7 bes:7 es:maj7 fis:7 b1:maj7 f2:m bes4.:7 es8:maj7
	es1:maj7 a2:m d4.:7 g1:maj7 s8 cis2:m fis4.:7 b8:maj7
	b1:maj7 f2:m bes4.:7 es1:maj7 s8 cis4.:m fis8:7  s2
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
		}
		\repeat volta 2 {
		b2:maj7 d:7 g:maj7 bes:7 es1:maj7 a2:m d:7
		\break 
		g:maj7 bes:7 es:maj7 fis:7 b1:maj7 f2:m bes:7
		\break 
		es1:maj7 a2:m d:7 g1:maj7 cis2:m fis:7
		\break 
		b1:maj7 f2:m bes:7 es1:maj7 cis2:m fis:7 	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
		}
		
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 224 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2
{
fis'2 d b g4. bes8~ bes1 b4. a8~ a2
\break 
d2 bes g dis4. fis8~ fis1 g2 f4. bes8~
\break 
bes1 b2 a4. d8~ d1 dis2 dis4. fis8~
\break 
fis1 g2 g4. bes8~ bes1 fis4. fis8 r2
}
\break 
\repeat volta 2 {\repeat unfold 16 {s1}}

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

\include "utils/books.ly"