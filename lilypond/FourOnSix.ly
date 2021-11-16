% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Four On Six" 
 	composer = "Montgomery"
 	tagline = ""

}


accords = \chords {
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
	r1 s s s s s s s s s s s
	bes4.:maj7 g4:m7 gis8:m7 a4:m7
	s d2.:7.9+
	r1 s
	g2:m7 c:7 g:m7 c:7 g:m7 c:7 g1:m7
	c4:m s8 f2:7.4+ s8
	bes4:m s8 es2:7.4+ s8
	a4:m s8 d2:7.4+ s8
	es4:m s8 aes2:7.4+ s8
	g2:m7 c:7 g:m7 c:7 g:m7 c:7 g1:m7
	bes4.:maj7 g4:m7 gis8:m7 a4:m7
	s d2.:7.9+
	g1:m s
	\repeat volta 2 {
	\repeat percent 4 {g:m7} 
	c2:m7 f:7 bes:m7 es:7 a:m7 d:7 es:m7 aes:7
	\repeat percent 3 {g1:m7} c2:m7 f:7
	bes1:maj7 es2:7 d:7 g1:m7 a2:7.5+ d:7
	}

}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 230 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat percent 4 {g,4 d' c g'}
c, g' f c' bes, f' es bes'
a, e' d a' es bes' aes es'  
\repeat percent 4 {g,,4 d' c g'}
\break
\clef treble
d'-. r8 c r cis d4-. r f2.->
\clef bass
\repeat percent 2 {g,,4 d' c g'}
\break
\clef treble
d'8^"Melody" d r bes c c r bes
\tuplet 3/2 {d es d} bes c r g bes d
c c r g a a4.~ a1
\break 
d'4-^^"(Stop Time)" r8 b->~ b2
c4-^ r8 a->~ a2
b4-^ r8 gis->~ gis2
f4-^ r8 d->~ d2
\break 
d8^"(Time)" d r bes c c r bes
\tuplet 3/2 {d es d} bes c r g bes d
c c r g a a4.~ a1
\break
d4-. r8 c r cis d4-. r f2.->
\improvisationOn
bes 4
\improvisationOff
r^"Solo Break" r2 r1
\break

\repeat volta 2 {
	\repeat percent 4 {s}
s s s s 
\repeat percent 3 {s} s s s s s}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

\include "utils/books.ly"