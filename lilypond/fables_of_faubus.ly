% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Fables of Faubus" 
 	composer = "Charlie Mingus"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  bes1:m7 s des:7.11+ s
  }
  \repeat volta 2 {
  bes1:m7 s des:7.11+
  } \alternative {{s}{s}}
ges:m7.5- c:7.5+
f:maj7.3- des:7.11+
c:7.5+.9+ bes:7.11+
aes:7 g:7.5+
\times 2/3 {s4 g:7 aes:7 a:7 bes:7 b:7}
c1:7
\times 2/3 {s4 des:7 d:7 es:7 e:7 f:7}
c1:7.5+.9+ bes:7.11+ f:maj7.3- s s s
bes:maj7.3- s ges:maj7.3- s
bes:maj7.3- s ges:maj7.3- s
d:maj7.9+.9- g:maj7.9- c:m7.5- f:7.9+
\repeat unfold 4 {bes4.:7.11+ e2:7.11+ s8}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\repeat volta 2 {
f2\glissando^"Keep playing on A" aes 
r8 f aes bes \times 2/3 {b16 c b} bes aes f4
g2\glissando bes 
r8 g bes c \times 2/3 {des16 d des} c bes g4
}
\break
\mark \default
\repeat volta 2{
  bes4-^ 4-- 4-^ 4--
  r aes8. bes16 c8. bes16 aes4
  f4-^ 2.--}
\alternative{
{f4-^ 2.--
  }
{f4-^ 4--~ 8 c \times 2/3 {des e g}
}
}
\break
\mark \default
aes1~ 8 c, \times 2/3 {des f aes} des bes g e
g4. g8 \times 2/3 {bes4 aes g8 f}
g4. f8 aes g f c
\break
\set Score.repeatCommands = #'((volta "1"))
es2.. c8 e2.. c8 f2.. c8 ges'1~ 1
g2\glissando bes 
r8 g^"Repeat to A" bes c \times 2/3 {des16 d des} c bes g4
\set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
es2.. c8 e2.. c8 
\set Score.repeatCommands = #'((volta #f))
g'1~ 2 \times 2/3 {aes4 c e}
g1~  2.^"fine" \times 2/3 {\parenthesize {a,8 bes b} }
\bar "||"
\break
\mark \default
c4. b8 c2~ 4. bes8 c des c bes
a4. g8 a2~ 2. \times 2/3 {a8 bes b}
c4. b8 c2~ 4. bes8 es des c bes
a4. g8 a2~ 4. g8 a bes a g
f2. es4 ges2. aes4 f2.. es8 aes1
\repeat unfold 8 {g8 f}
\repeat unfold 4 {<g des'> <f c'>}
<g des'> <f c'>^"A, 2nd after B, fine"
<g des'> <f c'> <g des'> <f c'> <g des'>4
\bar "|."
}
}

\include "utils/books.ly"
