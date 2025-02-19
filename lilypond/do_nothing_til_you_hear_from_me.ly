% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Do Nothing 'Til You Hear From Me" 
 	composer = "Duke Ellington"
 	tagline = ""

}


accords = \chords {
	f1:7
	\repeat volta 2 {
	bes:maj7 f2:m7 bes:7 es1:maj7 es2:m7 aes:9.11+
	bes:maj7 g:7.5+ c:7 f:13  bes:6 es4:6 e:m7.5-}
	\alternative{
	{f2:sus9 f:7}
	{bes2:6 aes4:m9 des:13}}
	ges1:maj7 s s ges:7 bes:maj7 d2:m7 g:9 c1:7 f:7
	bes1:maj7 f2:m7 bes:7 es1:maj7 es2:m7 aes:9.11+
	bes:maj7 g:7.5+ c:7 f:13  bes:6 es4:6 e:m7.5- bes2:6 f:7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxième
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 108 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
r8 es' c cis d f es cis
\repeat volta 2 {
d1 r8 es c cis d f es cis d1 r8 es c cis d f es cis
d bes f es~ es2 r4 cis' d8 f, g bes~ bes1}
\alternative {{r8 es c cis d f es cis}
{r2 r8 bes bes bes}}
\break
des1 bes8 des bes bes~ bes bes bes bes
des1 bes8 des bes bes~ bes bes bes bes
f'2.. f,8 g bes d a~ a4. bes8
c gis a c~ c cis d f~
f es c cis d f es cis
d1 r8 es c cis d f es cis d1 r8 es c cis d f es cis
d bes f es~ es2 r4 cis' d8 f, g bes~ bes1 r \bar "|."
%\set Timing.beamExceptions = #'()
%c4^\markup{Essai} cis c cis

%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c
	}
}


\include "utils/books.ly"