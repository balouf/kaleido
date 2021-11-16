% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Inner Urge" 
 	composer = "Joe Henderson"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	fis1:m7.5-.11 s s s
	f:maj7.11+ s s s
	es:maj7.11+ s2 d8:maj7.11+ es1:maj7.11+ s4.
	es4:maj7.11+ d8:maj7.11+ es4:maj7.11+ b:maj7.11+ des1:maj7.11+ s4
	des1:^5/c s2.. s1
	e:maj9 des:maj9 d:maj9 b:maj9.11+
	c:maj9 a:maj9 bes:13.11+}
	\alternative {{s8 g2.:maj9 s8}{g1:maj9}}
	\repeat volta 2 {
	fis1:m7.5-.11 s s s
	f:maj7.11+ s s s
	es:maj7.11+ s s s
	des:maj7.11+ s s s
	e:maj9 des:maj9 d:maj9 b:maj9
	c:maj9 a:maj9 bes:13.11+ g:maj9}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 218 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
r4 r8 fis b c fis, b c4. fis,8 b c r4
r4 r8 fis, b c fis, b c fis, b c r2
r4 r8 f, b c f, b c4. f,8 b c r4
r4 r8 f, b c f, b c f, b c r2
r4 r8 bes a es a, d es4. a,8 cis d4.
r4 r8 bes' a es a, d es a, cis d~ d f4 g8~
g4 r8 g f c g' c des4. f8 g c4.~
c4 r8 g, f c g' c des f g c r bes r dis~
dis4. cis8 b gis fis e es d des es c es \tuplet 3/2 {f g b}
cis4. b8 a4 fis8 ais8~ ais f4 r8 r4 fis-.
\override Glissando.style = #'zigzag
	b2\glissando b,\glissando gis'\glissando fis,\glissando g'\glissando f,\glissando}
\alternative {{a'4. fis8 a fis r4}{a1\fermata^"Fin"}}\bar "|."
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
 \repeat volta 2 {\repeat percent 4 {s1} \repeat percent 4 {s1} \repeat percent 4 {s1} \repeat percent 4 {s1}\break  s1 s s s s1 s s s}
 % c c c c c c c c
	}
}

\include "utils/books.ly"