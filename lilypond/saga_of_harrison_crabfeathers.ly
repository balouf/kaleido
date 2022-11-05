% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Saga of Harrison Crabfeathers" 
 	composer = "Steve Kuhn"
 	tagline = ""

}


accords = \chords {
  e2.:m s s s
  c:maj7 s s s
  a:m s s s
  e:m s s s
  \bar "||"
  d:m s s s
  bes:maj7 s s s
  g:m s s s
  d:m s s s
  \bar "||"
  aes:maj7 s s s
  aes:maj7 s s s
  \bar "||"
  c:m s s s 
  aes:maj7 s s s
  f:m s s s
  c:m s s s
  \break
  \repeat volta 2 {
  \repeat percent 8 {e:m7}
  \repeat percent 4 {c}
  \repeat percent 4 {e:m7}
  \bar "||"
  \break
  \repeat percent 8 {d:m7}
  \repeat percent 4 {bes}
  \repeat percent 4 {d:m7}
  \bar "||"
  \break
  \repeat percent 8 {aes}
  \repeat percent 8 {c:m7}
  \break
  \repeat percent 4 {aes:m7}
  \repeat percent 4 {c:m7}  
  }
}

theme = \new Staff {
	\time 3/4
	\tempo 2. = 60 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
b'2 d4 a2 g4 b2 e4 a,2 g4
e fis g fis2 d4 e2.~ 2 b'4
b a g fis2 e4 b' a g fis2 d4
e2.~ e~ e~ e

a2 c4 g2 f4 a2 d4 g,2 f4
d e f e2 c4 d2.~ 2 a'4
a g f e2 d4 a' g f e2 c4
d2.~ d~ d~ d

g2 f4~ 4 es2 d es4~ 4 bes'2
g2 f4~ 4 es2 d es4~ 4 f2

g2 bes4 f2 es4 g2 c4 f,2 es4
c d es d2 bes4 c2.~ 2 g'4
g f es d2 c4 g' f es d2\fermata bes4
c2.~ c~ c~ c
\repeat volta 2 {
\repeat percent 8 {s2.^"Aeolian"}
\repeat percent 4 {s2.^"Lyd."}
\repeat percent 4 {s2.}
\bar "||"
\repeat percent 8 {s2.^"Aeolian"}
\repeat percent 4 {s2.^"Lyd."}
\repeat percent 4 {s2.}
\bar "||"
\repeat percent 8 {s2.^"Lyd."}
\repeat percent 8 {s2.^"Aeolian"}
\repeat percent 4 {s2.^"Lyd."}
\repeat percent 4 {s2.}
\bar "|."
}
	}
}

\include "utils/books.ly"
