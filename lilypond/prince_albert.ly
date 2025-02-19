% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Prince Albert" 
 	composer = "Kenny Dorham"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  d1:m7 bes:m7 es:7 aes:maj7
  des:maj7 d2:m7.5- g:7.9+ c1:maj7 s
  c:m7 f:m7 bes:7 es:maj7
  aes:maj7 a2:m7.5- d:7.9+ g1:maj7 s
  a:m7 d:7.9- g:maj7 s
  fis:m7 b:7 e:maj7 c:7.5+
  d1:m7 bes:m7 es:7 aes:maj7
  des:maj7 des2:m7 ges:7 c1:m7 f2:7 b:7
  bes1:m7 es:7 aes s
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 172 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 aes'16 g f8 g aes bes c aes g f
\times 2/3 {des' es des} \times 2/3 {c des c} bes c16 bes aes8 bes16 aes
g8 es f g~ g aes bes es~ es4 \times 2/3 {c8 bes aes} g f4.
r8 aes' \times 2/3 {f es des} f des c bes
aes bes16 aes g8 aes bes aes bes g~ g1 r2 r4 r8 c16 d
\bar "||"
\break
c8 d es f g es d c bes aes bes aes~ aes c es c
d f a g aes4 \times 2/3 {g,8 bes c} d c d c~ c4 r
r8 es \times 2/3 {c bes aes} c aes g f
es f16 es d8 es d es f d~ d1 r2 r8 d g d'
\bar "||"
\break
d a8 8 8~ 4. b8 c4 es,8 8~ 4. c'8 b4 d,8 8~ 2~ 2 r8 d g a
b fis8 8 8~ 4. e8 es2 b'4. a8 gis b,4. r4 b'8 a
gis e4. r4 r8 aes16 g
\bar "||"
\break
f8 g aes bes c aes g f
\times 2/3 {des' es des} \times 2/3 {c des c} bes c16 bes aes8 bes16 aes
g8 es f g~ g aes bes es~ es4 \times 2/3 {c8 bes aes} g f4.
r8 e \times 2/3 {f aes c} es des r4
r8 g, \times 2/3 {aes c es} ges fes r4
r es8 c bes aes g f ges4 c,8 f r c'des es
c4 \times 2/3 {aes16 bes aes} f8 aes4 r8 ges~
\times 2/3 {ges16 aes ges} es8 ges4~ 4 g8 aes r1 r1
\bar "|."
}
}


\include "utils/books.ly"
