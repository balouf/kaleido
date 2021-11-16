% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Ginseng People" 
 	composer = "Woody Shaw"
 	meter = "Bright Swing"
 	tagline = ""

}


accords = \chords {
	\partial 2 s2
	\repeat volta 2 {
		f2:m6 f:sus4 f2:m6 f:sus4 f2:m6 f:sus4 f2:m6 f:sus4
		ges1:7 aes:13 f2:m7/aes es:m7/aes
	}
	\alternative {{f1:m7/aes}{f1:m7/aes}}
	\repeat volta 2 {fis1:9sus4 fis1:7/cis fis1:9sus4}
	\alternative {{fis1:7/cis}{fis1:7/cis}}
	\repeat volta 2 {g1:9sus4 g1:7/d g:9sus4}
	\alternative {{g:7/d}{g1:7/d}}
	f2:m6 f:sus4 f2:m6 f:sus4 f2:m6 f:sus4 f2:m6 f:sus4
	ges1:7 aes:7sus4 g2.:m7.5- c4:7.9- f1:m
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 2 c'8 es r c
\repeat volta 2 {
	d2~ d8 c bes f aes4. f8~ f2~ f4. f8 aes bes c d
	bes4 r r8 c es c des2. c4 aes1~ aes~
}
\alternative {
	{aes4. r8 c es r c}
	{aes2.\repeatTie r8 <b gis>~}
}
\break
\key b \major
\repeat volta 2 {
	<b gis>4 <ais fis>8 <gis e> <ais fis>4 <b gis> r2 r4 r8 <b gis>~
	<b gis>4 <ais fis>8 <gis e> <ais fis>4 <gis e>
}
\alternative {
	{r2 r4 r8 <b gis>\laissezVibrer}
	{r2 r4 r8 <c a>~}
}
\break
\key c \major
\repeat volta 2 {
	<c a>4 <b g>8 <a f> <b g>4 <c a> r2 r4 r8 <c a>~
	<c a>4 <b g>8 <a f> <b g>4 <a f>
}
\alternative {
	{r2 r4 r8 <c a>\laissezVibrer}
	{r2 r4 c-.}
}
\break
\key es \major
	d2~ d8 c bes f aes4. f8~ f2~ f4. f8 aes bes c d
	bes4 r r c <des e,>2. <c e,>4-. <bes des,>2. <c des,>4-. es,2. c8 f~ f1
\bar "|."

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
