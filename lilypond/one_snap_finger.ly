% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.18.2"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "One Finger Snap" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
  r1 s s s
  es:sus13 es:13 es:sus13 es:13 
  es:m9 aes:13 es:m9 aes:13
  g:m7.5- c:8 f:m7.5-
  bes:8 es:maj7 s d:m7.5- g:8
  \repeat volta 2 {
  \parenthesize c:13 s s2 s4 s8 \parenthesize a:8
  s1
  es:sus13 es:13 es:sus13 es:13 
  es:m9 aes:13 es:m9 aes:13
  g:m7.5- c:8 f:m7.5-
  bes:8 es:maj7 s d:m7.5- g:8
  }
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 264 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
% \set Timing.beamExceptions = #'()
\override TextSpanner.bound-details.left.text = "break (trp. w/ pn.)"
d8\startTextSpan es ges f a aes es b~ b des4 es8 r c f\stopTextSpan c
a'4 aes bes8 ces des es~ es1~ es~ es2 c4 aes8 bes~ bes1~ bes2. bes4-. 
des1~ des2 bes4 ges8 f~ f1~ f r8 f e f g a bes c des4-- c-. des c8 bes~ 
bes1~ bes2 des8 ces bes aes g bes d, bes f'4-- es-. f-- es-. f es8 g~ g1
r2 r4 r8 f \break
\repeat volta 2 {
d8\startTextSpan es ges f a aes es b~ b des4 es8 r c f\stopTextSpan c
a'4 aes bes8 ces des es~ es1~^"fine" es~ es2 r s1 s s s s s s s s s s s s s_"A7alt only at fine"
}
	}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph #"scripts.coda" }
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


theme = \staffViolon

\include "utils/books.ly"