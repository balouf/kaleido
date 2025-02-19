% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Moanin'" 
 	composer = "Bobby Timmons"
 	tagline = ""

}


accords = \chords {
	\partial 2. s2.
	\repeat volta 2 {
	\repeat unfold 3 {s2 bes4. f8 s1}
	s2 bes4. f8
	}
	\alternative {{s1}{c2:m7.5- f:7}}
	bes2:m9 aes:9 g:7.9- c:7.9+ g1:m7 f2 b:9
	bes:m9 aes:9 g1:7.9- g:m7 c:7
	\repeat unfold 4 {s2 bes4. f8 s1}
% SOLOS f2:m aes:9 f:7 c:7 sim?
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
\repeat volta 2 {
\repeat unfold 3 {f1:m g2:7 c:7} f1:m
}
\alternative {{g2:7 c:7}{f1:7}}
bes1:m7 g2:m7.5- c:7 f1:m7 f:7
bes1:m7 g:7 g:m7.5-/c c:7
\repeat unfold 4 {f1:m g2:7 c:7}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 132 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 2.
f8 f aes aes f c
\repeat volta 2 {
	%<<{
	es4 f 
	\parenthesize <bes f d>4. \parenthesize <f c a>8
	%}
	%	{s2 <bes f>4. <c, a>8}
	%>>
	r4 f8 f aes4 bes8 bes
	\tuplet 3/2 {ces bes aes} f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
	r4 f8 f c'4 es8 c
	\tuplet 3/2 {ces bes aes} f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
	r4 f8 f aes aes f c es4 f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
}
\alternative{{r4 f8 f aes aes f c}{r2 f4 f}}
\bar "||"
c'2 \tuplet 3/2 {ces8 bes f} bes f
aes4. f8 es c es f~ f1 r2 f4 f
c'2 \tuplet 3/2 {ces8 bes f} bes f
aes4. f8 aes f aes c~ c2 es8 c bes c
\bar "||"
r4 f,8 f aes aes f c
es4 f \parenthesize <bes f d>4. \parenthesize <f c a>8
r4 f8 f aes4 bes8 bes
\tuplet 3/2 {ces bes aes} f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
r4 f8 f c'4 es8 c
\tuplet 3/2 {ces bes aes} f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
r4 f8 f aes aes f c es4 f4 \parenthesize <bes f d>4. \parenthesize <f c a>8
r1
\bar "|."
\break
\repeat volta 2 {s1 s s s s s s}
\alternative {{s}{s}}
\break
s s s s s s s s
\break
s s s s s s s s
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"