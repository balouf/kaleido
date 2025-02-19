% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Pyramid" 
 	composer = "Horace Silver"
 	tagline = ""

}


accords = \chords {
  s8 aes4.:m7.5- des:7.9+ ges1:maj7 s4
  f4.:m7.5- bes2:7.5+.9+
  es1 s s s s s s s
  \repeat volta 2 {
  e1:/bes s es:m7.5-.9 s
  e:/bes s aes:m7 s
  s8 aes4:m7 g:m7 fis:m7 s8 f4.:m7 e2:/bes s8
  s2 es4:m bes:/d c1:m7.5-}
  \alternative {
  {s8 c2.:m7.5- f8:7.5+.9- s1
  s8 f2.:m7.5- e8:/bes s1}
  {s8 c4.:m7.5- f2:7.5+.9- f1:m7.5-/bes
  s8 es2.:m9.7+/bes es1:m9.7+ s8}
  }
f2:m7.5- f2:m7.5-/bes es1:m6
f2:m7.5- bes es1:m6 
f2:m7.5- f2:m7.5-/bes
es2:m c:m7.5-
s8 fis4.:m7 b:7 f8:m7.5- s1
s8 c4.:m7.5- f:7.5+.9- s8
f1:m7.5-/bes
s8 es4.:m7 aes2:7 s8 des4.:m7 ges2:7
c2:maj7 e:13.11+ s8 es:m7.5-.9
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 159 
	\set Staff.midiInstrument = "trumpet"
	\key ges \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
  r8 <bes' des> 
  \times 2/3 {<aes ces> <d, ges> <b d>}
  <cis e>4 <b d>8 <bes des>~ <bes des>1
  r8 <es bes'>
  \times 2/3 {<es aes> <ces es> <aes ces>}
  <des ges>4 <b d>8 <c f>~
  <c f>2 r4 <c f>8 <des f>~
  <des f>2 r4 <des f>8 <c f>~
  <c f>2 r4 <c f>8 <ces f>~
  <ces f>2 r4 <ces f>8 <c f>~
  <c f>2 r4 <c f>8 <des f>~
  <des f>2 r4 <des f>8 <c f>~
  <c f>2 r4 <c f>8 <ces f>
  r2 \times 2/3 {f8 ges f} es bes'~
\repeat volta 2 {
bes1 r4 r8 ces \times 2/3 {des d des} ces bes~
bes a4.~ a2 r \times 2/3 {f8 ges f} es bes'~
bes1 r4 r8 es, aes bes ces des es1
r4 r8 es, es' des ces bes aes1
r4 bes8 ces aes e b a bes1
r2 es8 bes f' ges~
}
\alternative
{
{\mark \markup {\musicglyph "scripts.coda" } ges1 r4 r8 f \times 2/3 {aes16 bes aes} ges8 f es
f1 r2 \times 2/3 {f8 ges f} es bes'\laissezVibrer}
{ges1\repeatTie r2 es8 bes d f~ f1 r2^"Fine" r4
es8 es'~   
}
}
es4.^"Rumba" des8~ \times 2/3 {des16 d des} ces8 bes aes
bes2 r8 es, ges bes aes2 r8 b, e aes ges2 r4 es8 es'~
es4. des8~ \times 2/3 {des16 d des} ces8 bes aes
bes2 r8 es, ges aes~ aes2. ges8 f r2 \times 2/3 {f8 ges f} es bes'\laissezVibrer^"D.S. al fine."
\bar "|."
\break
\mark \markup {\musicglyph "scripts.coda" }
ges1\repeatTie r2 es8 bes d f~ f2. c8 es~ es1
r8 <ces' es> <bes des> <aes ces> <ges bes>4
<fes aes>8 <f a>~ <f a >1~ <f a>~ <f a>
\bar "|."
	}
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


theme = \staffViolon

\include "utils/books.ly"