% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "E.S.P." 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
		\repeat volta 2 {e1:7.5+.9+ s f:maj7 s
	e1:7.5+.9+ s es:maj9.11+ s
		d:7.9+ es:7.11+ e:7.9+ f2:maj7 es:maj7}
		\alternative
		{
		{d1:m9 g:7 g:m7 ges:7}
		{des:9.11+ g:m7 des2:m7 ges:7 f1:maj7}}
		\repeat volta 2 {e1:7.5+.9+ s f:maj7 s
	e1:7.5+.9+ s es:maj9.11+ s
		d:7.9+ es:7.11+ e:7.9+ f2:maj7 es:maj7}
		\alternative
		{
		{d1:m9 g:7 g:m7 ges:7}
		{des:9.11+ g:m7 des2:m7 ges:7 f1:maj7}}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 268
	\set Staff.midiInstrument = "violin"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2
{
c'4. g8~ g4. d8~
d4. g8~ g4 c8 g~
g4. d8~ d4. c'8~
c g~ g2 r4
r4 r8 c~ c4 g8 d~
d4. g8~ g4 c8 a~
a4. f8~ f4. g8~
g f~ f2 r4
d'2.. c8
a2. g8 f
d4. d8~ d4 g8 e~
e2 f4 bes8 g~
}
\alternative {
	{g2. b8 g 
f4 d'-. b g8 f~
f4. d8~ d4-\bendAfter #-3  r
	r1}
	{g2\repeatTie es4. d8~ 
	d2 \tuplet 3/2 {f4 bes d}
	es4. bes8~ bes4. a8~
	a d~ d2.
	}
}
\bar "|."
\break

\repeat volta 2
{s1 s s s \break s s s s \break s s s s \break}
\alternative {{s s s s \break}{s s s s}}
\bar "|."
	}
}

\include "utils/books.ly"