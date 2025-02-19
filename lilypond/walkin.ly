% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 29)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Walkin'" 
 	composer = "Miles Davis"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	s1 s s s
	s s s s
	\repeat volta 2 {
	f:7 bes:7 f:7 s
	bes:7 s f:7 s
	g:m7 c:7 f:7}
	\alternative{{c:7}{c:7}}
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "violin"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 4 <c' f>4^"Intro (may be used as Ending)" \bar "||"
<es aes>8 <c f>~ <c f>4 <bes es> <g c>
<bes es>8 <g c>~ <g c>4 <f bes> <c f>
<es aes>8 <c f>~ <c f>4 <bes es>2~ <bes es>2.
<c' f>4
<es aes>8 <c f>~ <c f>4 <bes es> <g c>
<bes es>8 <g c>~ <g c>4 <f bes> <c f>
<es aes>8 <c f>~ <c f>4 <bes es>2
r4 r8 f' e f4 b8~
\repeat volta 2 {
b2.~ b8 c r4 r8 f, e f4 bes8~ bes2 r8 gis a f
r4 r8 aes16 f aes8 f4 e'8~ e2.~ e8 f
r4 r8 c aes f4 b8~ b2.~ b8 c
r2 r8 gis \tuplet 3/2 {a c d}
es es d4 r des8 des c4 r ces8 ces bes bes aes2.~ aes8 bes}
\alternative {{r4 r8 f e f4 b8\laissezVibrer}{r1}}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
