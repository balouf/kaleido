% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "It Don't Mean A Thing" 
 	composer = "Duke Ellington"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat volta 2 {
	g2:m g:maj7.3- g:m7 g:m6
	es:7 d:7.9+ g1:m c:7 ges:7 c2:m f:7}
	\alternative {{bes:maj7 d:7.9+}{bes1:maj7}}
	f:m bes:7 \repeat percent 2 {es:maj7} g:m c:7 f:7 a2:m7.5- d:7.9+  
	g2:m g:maj7.3- g:m7 g:m6
	es:7 d:7.9+ g1:m c:7 ges:7 c2:m f:7 bes:maj7 d:7.9+ 
	\repeat volta 2 {
	g2:m g:maj7.3- g:m7 g:m6
	es:7 d:7.9+ g1:m c:7 ges:7 c2:m f:7}
	\alternative {{bes:maj7 d:7.9+}{bes1:maj7}}
	f:m bes:7 \repeat percent 2 {es:maj7} g:m c:7 f:7 a2:m7.5- d:7.9+  
	g2:m g:maj7.3- g:m7 g:m6
	es:7 d:7.9+ g1:m c:7 ges:7 c2:m f:7 bes:maj7 d:7.9+ 

	%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 180
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 4 d' 4
\repeat volta 2 {
g,2 g4 bes d2 g,4 bes des2 c8 bes4 g8~ g1
r4 bes8 bes~ bes bes bes4 bes8 bes4 bes8 bes4 bes8 bes~ bes bes bes4 bes8 bes4 bes8}
\alternative {{bes4 r r bes}{bes r r c}}
\bar "||"
c c c8 bes4 c8~ c4 bes c8 bes~ bes4 g1
r2 r4 c4 c c c8 c~ c4 c bes c8 c~ c4 f,1 g2. bes4
\bar "||"
g2 g4 bes d2 g,4 bes des2 c8 bes4 g8~ g1
r4 bes8 bes~ bes bes bes4 bes8 bes4 bes8 bes4 bes8 bes~ bes bes bes4 bes8 bes4 bes8
bes4 r r2 \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 { s1 s s s \break s s s}
 \alternative {{s}{s}} \break
\bar "||"
 s s s s s s s s
\bar "||" \break
s s s s \break s s s s
	}
}


\include "utils/books.ly"