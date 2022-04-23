% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Jumpstick" 
 	composer = "Ben Leperchey"
 	tagline = ""

}


accords = \chords {
  \partial 4. s4.
  \repeat volta 2 {
  c1:maj7 d2:m7 g:7 aes1 aes:13 g:maj7 g2:m7 c:7
  }
  \alternative {{f1:maj7 f2:m7 bes:7}
                {f:maj7 c:7 f1:7}}
  \break
  bes:m7 es:7 aes:maj7 des:maj7
  d:m7.5- g:7.5+ c:m g:7 \break
  c1:maj7 d2:m7 g:7 aes1:maj7 s  d:7 g:7 c:maj7 s
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 200 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 4. d8 g d'~
\repeat volta 2 {
d2 r8 b16 c b8 a
b c r d r b r es~
es2 r8 d16 es d8 c
d8 es r d r c r b~
b2 a8 b a g
r bes4.~ bes4 gis8 a~
}
\alternative {
  {a2 r8 e \tuplet 3/2 {f a c} e d r b r d, g d'\laissezVibrer}
  {a2\repeatTie r8 dis, \tuplet 3/2 {e g bes} d c r a r c, f c'~}}
c2. bes8 g~ g2 r8 bes, es bes'~ bes2. aes8 f~ f2 r8 aes,  d aes'~ \break
aes2 r8 aes, d aes' r g r es4. d4 es2 f4 fis8 g~ g2 r8 d g d'
d2 r8 b16 c b8 a
b c r d r b r es~
es2 r8 d16 es d8 c
d8 es r d r c r fis~
fis2 es8 f es cis r d4.~ d4 b8 c r1 r
\bar "|."
	}
}

\include "utils/books.ly"