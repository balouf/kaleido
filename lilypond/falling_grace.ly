% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 32)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Falling Grace" 
 	composer = "Steve Swallow"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  aes1:maj7 s d:7/fis g:m
  f2:m7 bes:7 es:maj7/g d:7/fis g1:m/f c:/e
  f:maj7 fis:m7.5- b:7 e:m
  a2:m7 d:7 g1:maj7
  
  c:m7 cis:m7.5- bes:maj7/d es:maj7
  e:m7.5- a:7 d2:m7 des:7 c:m7 f:7
  bes1:maj7 es:maj7}
  aes:maj7 des:maj7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
  es'1~^"Medium Swing" es2~ \tuplet 3/2 {es4 d c}
  d2~ d8 c4 d8~ d2. c4
  \tuplet 3/2 {d c bes~ } bes2 c4~ \tuplet 3/2 {c8 bes c} d4~ \tuplet 3/2 {d8 c bes}
  \tuplet 3/2 {a2 g4} \tuplet 3/2 {g2 d'4}  \tuplet 3/2 {c2 g4} g'2~ 
  \tuplet 3/2 {g f4~ } \tuplet 3/2 {f e d} c2~ c8 b4 c8
  b4 b8 g'~ g fis4 b,8~ b1
  b4 a8 e'~ e d4 b8~ b2. c4
  \bar "||"
  d1~ \tuplet 3/2 {d2 a4} \tuplet 3/2 {c bes a}
  \tuplet 3/2 {c bes f'~} f2~ f4 es d8 c4 bes8
  a1~ a4 a8 f' r e r a,~
  a1 r4 a8 d r c r a~
  a2~ \tuplet 3/2 {a4 bes c} d2~ \tuplet 3/2 {d4 es f}
  \break  
}
  g2~^"Ending" \tuplet 3/2 {g4 aes bes} c1-\fermata \bar "|."
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

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"