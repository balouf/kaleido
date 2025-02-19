% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Bright Size Life" 
 	composer = "Pat Metheny"
 	meter = "Med. Latin"
 	tagline = ""

}


accords = \chords {
	s1
	\repeat unfold 2 {
	\repeat volta 2
	{g:maj7 s bes/a s d:9 d/c}
	\alternative {{bes:maj7 s}{g/b d}}
	g/a s f/g s a/e s d/fis s
	g:maj7 s bes/a s d:9 d/c a:7 d
	}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
fis8 cis' b fis' e b' a d,
\repeat volta 2 {
	e2.. \acciaccatura a8 b~ b4~ \tuplet 3/2 {b8 a g fis g a fis g a}
	e1~ e4. g8~ g4~ \tuplet 3/2 {g8 fis e}
	\tuplet 3/2 {e fis d~} d2.~ d1
}
\alternative {
	{<d f,>8 <e g,> r <f a,> r <e g,> <d a>4->~ <d a> r r8 b' a d,}
	{<b' d,> <a c,> r <g b,> r <a c,> <fis a,>4->~ <fis a,>1}
}
r4 r8 cis d, fis g, e''~ e d cis2. e4~ \tuplet 3/2 {e8 d c} b4 d8 a~ a1
r2 c8 cis, fis g, cis'4 b8 a~ a g4. fis8 a r e'~ e d4.\laissezVibrer
	fis,8 cis' b fis' e b' a d,
	e2.. \acciaccatura a8 b~ b4~ \tuplet 3/2 {b8 a g fis g a fis g a}
	e1~ e4. g8~ g4~ \tuplet 3/2 {g8 fis e}
	\tuplet 3/2 {e fis d~} d2.~ d1
<e cis>4. b8 a4. g8 fis4 <d' cis>2.->
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c 
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 }
 \repeat volta 2 {s1 s s s s s}
 \alternative {{s s }{s s}}
\break
s s s s s s s s
\break 
s s s s s s s s
\bar "|."
 % c c c c c c c c
	}
}

\include "utils/books.ly"