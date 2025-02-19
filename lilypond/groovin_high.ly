% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 29)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Groovin' High" 
 	composer = "Dizzy Gillespie"
 	tagline = ""

}


accords = \chords {
	s1 s s s
	\repeat volta 2 {
	es:maj7 s a:m7 d:7
	es:maj7 s g:m7 c:7
	f:7 s f:m7}
	\alternative {{
	bes:7 g:m7 fis:m7 f:m7 bes:7.9-}
	{bes:7}}
	f:m aes2:m7 des:7 es1:maj7 f2:m7 bes:7
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "violin"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
 \set Timing.beamExceptions = #'()
\compressEmptyMeasures
g'8[^"Horn Intro" bes] d f~ f4 d8 bes e cis r4 r2
f,8[ aes] c es~ es4 c8 aes d b r4 r b8 a
\repeat volta 2 {
	bes g r4 r2 bes8 g r4 r2
	r8 e a c b a gis e g f fis d'~ d4 c8 a
	bes g r4 r2 bes8 g r4 r2
	r8 d g bes a g fis d f es e c'~ c4 bes8 aes
	\bar"||"
	a f r4 r2 \tuplet 3/2 {a8 bes a} f4 r2
	r8 c f aes g f e c
}
\alternative {{
es cis d bes'~ bes4 aes8 fis g bes d f~ f4 d8 bes e cis r4 r2
f,8 aes c es~ es4 c8 es d b r4 r b16 cis b a}{
es8 cis d bes'~ bes4 aes8 e }
}
f4 f8 g aes g f4 aes aes8 bes b bes aes4 es' r r2 r1 \bar"|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"