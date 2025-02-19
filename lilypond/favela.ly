% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Favela" 
 	composer = "A.C. Jobim"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
	\partial 4. s4.
	g1:13 f:13 g1:13 f:13
	g1:13 f:13 g:7.9+ s
	c:m7 f:13 b:m7 bes:7
	e2:m7.5- es:m6 g:m7 d:m7 g1:m7 s
	c:m7 g:m7 c:m7 g:m7 c:m7 g:m7
	es4.:7.9+ d:7.9+ c2.:m7 s2
	g1:13 aes:13 g1:13 aes:13
	g1:13 aes:13 g:7.9+ s
	c:m7 f:13 b:m7 bes:7
	e2:m7.5- es:m6 g:m7 d:m7 g1:m7 s
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 132 
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 4.
d'4 g8~
% A
g2~ g8 d4 f8~
f2~ f8 d4 g8~
g2~ g8 d4 f8~
f2~ f8 d4 g8~
g2~ g8 d4 f8~
f2~ f8 d4 bes8~ bes1 r2 r8
g4 c8~
\break
c2~ c8 bes4 d8~
d2~ d8 c4 d8~
d2~ d8 f4 g8
bes4 g8 f~ f d4 c8~
c bes4 d8~ d c4 bes8
g4 f8 d~ d f4 g8~ g1 r \bar"||" \break
% B
c4. es8~ es4 c~
c8 bes4 bes8 bes4 g
c4. es8~ es4 c~
c8 bes4 bes8 bes4 r
c4. es8~ es4 c~
c8 bes4 bes8 bes4 g
ges'4. f8~ f4 es~
es8 c4 c8 c4 d \bar"||" \break
% C=A
g2~ g8 d4 f8~
f2~ f8 d4 g8~
g2~ g8 d4 f8~
f2~ f8 d4 g8~
g2~ g8 d4 f8~
f2~ f8 d4 bes8~ bes1 r2 r8
g4 c8~
\break
c2~ c8 bes4 d8~
d2~ d8 c4 d8~
d2~ d8 f4 g8
bes4 g8 f~ f d4 c8~
c bes4 d8~ d c4 bes8
g4 f8 d~ d f4 g8~ g1 r
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"