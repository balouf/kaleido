% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 25)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Joy Spring" 
 	composer = "Clifford Brown"
 	tagline = ""

}


accords = \chords {
	\partial 4. s4.
	f1:maj7 g2:m7 c:7 f1:maj7 bes2:m7 es:7
	a:m7 aes:7 g:m7 c:7 f1 aes2:m7 des:7
	ges1:maj7 aes2:m7 des:7 ges1:maj7 b2:m7 e:7
	bes:m7 a:7 aes:m7 des:7 ges1 a2:m7 d:7
	g2.:maj7 g:m7 c2:7 f2.:maj7 f:m7 s8 bes4.:7
	es1:maj7 aes2:m7 des:7 ges1:maj7 g2:m7 c:7
	f1:maj7 g2:m7 c:7 f1:maj7 bes2:m7 es:7
	a:m7 aes:7 g:m7 c:7 f1 g2:m7 c:7
	
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 166 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 4. c8 f c'~
c2~ c8 a \tuplet 3/2 {g16 a g} f8 g4. a8 r2
r8 c, f d' c a \tuplet 3/2 {g16 a g} f8 aes f16 des bes8 g'~ g4 \tuplet 3/2 {f8 g f}
c' f,4.-> f-> f8->~ f d f bes \tuplet 3/2 {a16 bes a} f8 d c f c g' f r2
r8 bes aes ges f des ges des'~ des2~ des8 bes \tuplet 3/2 {aes16 bes aes} ges8 aes4. bes8 r2
r8 des, ges es' des bes \tuplet 3/2 {aes16 bes aes} ges8 a fis16 d b8 gis'~ gis4 \tuplet 3/2 {fis8 gis fis}
cis' fis,4. fis fis8~ fis es ges ces bes ges es des ges \parenthesize des aes' ges r2
r8 b a e g f fis16 a c e d4. b8 \tuplet 3/2 {a16 b a} g8 bes4->~
bes8 ges f es e des' \tuplet 3/2 {c16 des c} bes8 c4. a8 \tuplet 3/2 {g16 a g} f8 aes4->~
aes8 e es des d ces' \tuplet 3/2 {bes16 ces bes} aes8 bes4 \tuplet 3/2 {g8 f es} f4 g8 aes
r bes ces des bes aes g aes des4 \tuplet 3/2 {bes8 aes ges} aes4 bes8 r
r a g f e c f c'~
c2~ c8 a \tuplet 3/2 {g16 a g} f8 g4. a8 r2
r8 c, f d' c a \tuplet 3/2 {g16 a g} f8 aes f16 des bes8 g'~ g4 \tuplet 3/2 {f8 g f}
c' f,4.-> f-> f8->~ f d f bes \tuplet 3/2 {a16 bes a} f8 d c f c g' f r2
r1
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

theme=\staffViolon

\include "utils/books.ly"