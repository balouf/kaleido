% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Like Sonny" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
  d1:m7 s f:m7 s aes:m7 s2 bes:7.5+ es1:maj7 s
  a:m7 s f:m7 s cis:m7 s2 fis:7 b1:maj7 es2:m7 aes:7
  d1:m7 s f:m7 s aes:m7 s2 bes:7.5+ es1:maj7 s
  \repeat volta 2 {
    d1:m7 s f:m7 s aes:m7 s2 bes:7.5+ es1:maj7 s
  a:m7 s f:m7 s cis:m7 s2 fis:7 b1:maj7 es2:m7 aes:7
  d1:m7 s f:m7 s aes:m7 s2 bes:7.5+ es1:maj7 s
  }
  es1:maj7 s
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 154
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()

c16 d c b c4~ c8. b16 c d c b
c4~ c8. b16 c d c b d8. c16
es f es d es4~ es8. d16 es f es d
es4~ es8. d16 es f es d es8. f16
ges g ges f ges4~ ges8. f16 ges g ges f
ges4~ ges8. f16 ges g ges f ges g ges f
d4. cis8 d4 cis8 d~ d2 r
\break
c'16 d c b c4~ c8. b16 c d c b
c4~ c8. b16 c d c b c d c b
aes ces aes g aes4~ aes8. g16 aes ces aes g
aes4~ aes8. g16 aes ces aes g aes ces aes g
e f e dis e4~ e8. dis16 e f e dis
e4~ e8. dis16 e f e dis e f e cis dis1~ dis2 r
\break
c16 d c b c4~ c8. b16 c d c b
c4~ c8. b16 c d c b d8. c16
es f es d es4~ es8. d16 es f es d
es4~ es8. d16 es f es d es8. f16
ges g ges f ges4~ ges8. f16 ges g ges f
ges4~ ges8. f16 ges g ges f ges g ges f
\mark \markup { \musicglyph "scripts.coda" }
d4. cis8 d4 cis8 d~ d2 r
\break
\repeat volta 2 {
s1 s s s s s s s \break
s1 s s s s s s s \break
s1 s s s s s s s
}
\break
\mark \markup { \musicglyph "scripts.coda" }
d4~ d8. cis16 d4~ d8. cis16 d8. cis16 d2.\fermata \bar "|."
}
}


\include "utils/books.ly"