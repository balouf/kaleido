% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "The Fox" 
 	composer = "Lalo Schifrin"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2 {
	d1:m g:m7 c:7 f:maj7 bes2:maj7 g:m7}
	\alternative {{e1:m7.5- a:7.5- f}{e1:m7.5- a:7.5-}}
	d2:m7 d:m6
	d1:m7 c:m6 d:7 c:m6
	d:7 d:m6 e:7 f 
	d1:m g:m7 c:7 f:maj7 bes2:maj7 g:m7
	e1:m7.5- a:7.5- d:7 
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxième
}

staffViolon = \new Staff {
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
\partial 8 a'8 
\repeat volta 2 {d e4 f a, bes8~ bes2~ bes4. g8
c d4 e g, a8~ a2~ a4. f8
bes c4 d f, g8~ 
}
\alternative {
	{g2~ g8 a bes a~ a2~ a8 g a f~ f2~ f4. a8}
	{g2~ g8 a bes g~ g2~ g8 a f e~}
}
e1
r2 \tuplet 3/2 {r4 a bes} c2~ c8 d bes a~ a2~ a8 a bes c~
c4. es8 d bes4 a8~ a2~ a8 b c d~ d2~ \tuplet 3/2 {d4 e c}
b2~ b8 c4 bes8~ bes4 e, a4. a8
d e4 f a, bes8~ bes2~ bes4. g8
c d4 e g, a8~ a2~ a4. f8
bes c4 d f, g8~ g2~ g8 a bes a~ a2 \tuplet 3/2{a4 f' cis} d1
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


theme = \staffViolon

\include "utils/books.ly"
