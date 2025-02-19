% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "House of Jade" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  bes1:7sus4 a:7sus4 e:m7 es:maj7.11+

  d2:m7.5- des:maj7 c:m7 des:7 es:7 f:7 des:7 c:m7
  d2:m7.5- des:maj7 c:m7 f:7 es:7 f:7 des:7 c:m7
  
  es1:7sus4 R R R
  d1:7sus4 R R R
  

  d2:m7.5- des:maj7 c:m7 des:7 es:7 f:7 des:7 c:m7
  d2:m7.5- des:maj7 c:m7 f:7 es:7 f:7 des:7 c:m7
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 78 
	\set Staff.midiInstrument = "trumpet"
	\key c \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
r1^"Intro" r1 r1 r2 r4 a' \break
\bar "||"
aes bes8 c~ c4 c8 es d4 bes8 g~ g2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g4. f8 \break
aes4 bes8 c~ c4. es8 f4 d8 c~ c2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g2 \break
\bar "||"
c1~ c4. g16 es f8 g4 aes16 bes
c1~ c4. aes16 f g8 aes4 bes16 c \break
d1 r4 e d bes8 a~ a1~ a2. r8 a \break
\bar "||"
aes4 bes8 c~ c4 c8 es d4 bes8 g~ g2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g4. f8 \break
aes4 bes8 c~ c4. es8 f4 d8 c~ c2
c8_"Play X3 last time" es4 c16 bes g4. f8 bes4 f8 g~ g2 \bar "|."
	}
}

\include "utils/books.ly"