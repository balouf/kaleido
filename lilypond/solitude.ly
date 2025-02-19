% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Solitude" 
 	composer = "Duke Elligton"
 	tagline = ""

}


accords = \chords {
	\repeat percent 3 {f1:m/bes}
	s2 bes:7
	\repeat volta 2 {
	es f:m g:m c:m f1:m f:m f2:m/bes g:m/bes f:m bes:7}
	\alternative {{es1 f2:m bes:7}{es1 es:7}}
	aes a:dim es2 bes:7 bes2..:m es8:7
	aes1 a:dim g2:m c:m f:7 bes:7
	es f:m g:m c:m f1:m f:m f2:m/bes g:m/bes f:m bes:7 es c:7 f:m bes:7
	\repeat volta 2 {
	es f:m g:m c:m f1:m f:m f2:m/bes g:m/bes f:m bes:7}
	\alternative {{es1 f2:m bes:7}{es1 es:7}}
	aes a:dim es2 bes:7 bes2..:m es8:7
	aes1 a:dim g2:m c:m f:7 bes:7
	es f:m g:m c:m f1:m f:m f2:m/bes g:m/bes f:m bes:7 es c:7 f:m bes:7
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 92 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat percent 3 {r1}
r2 bes'4 c
\repeat volta 2 {
d4. d8 d2~ d es es1 g,2. c4
c bes bes2~ bes4 aes aes4. g8}
\alternative
{
{g1~ g2 bes4 c}
{g1~ g2.~ g8 c}}
\bar "||"
es c es es,~ es4. c'8
es c es es,~ es4. c'8
es c es4 c g f2.~ f8 c'
es c es es,~ es4. c'8
es c es es,~ es4. c'8
es c es4 c c c2 bes4 c
\bar "||"
d4. d8 d2~ d es es1 g,2. c4
c bes bes2~ bes4 aes aes4. g8 g2. r4 r1 \bar "|."
\break 
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {s1 s s s s s \break}
 \alternative {{s s}{s s}}
 \bar "||"
 s s s s \break s s s s
 \bar "||" 
 s s \break s s s s s s
 \bar "|."
% c c c c c c c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
