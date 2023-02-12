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
}

theme = \new Staff {
	\time 4/4
	\tempo 4. = 100 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\repeat volta 2 {
f2\glissando^"Keep on A" aes 
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
g1~  2. \times 2/3 {a,8 bes b}
\break
\mark \default
bes8 8 8 d4 8 
<<
  {\voiceOne r8 f f c a f}
  \new Voice {\voiceTwo c'2.}
>>
\oneVoice
bes8 8 8 d4 8
<<
  {\voiceOne r8 f f c a f}
  \new Voice {\voiceTwo c'2.}
>>
\oneVoice
bes8 8 8 d4 8 c8. d16 c bes a8 d, f g2. c
r8 a16 g a g a g f8 d d4 g8 a r4	
r8 a16 g a g a g f8 d d4 g8 f r4	
r8 a16 g a g a g f8 d d4 g8 a r4
f'2.~ 2.~ 
<<
  {
    \voiceOne
    f2.~ 2.
  }
  \new Voice {
    \voiceTwo
    r8 f16 d c a g c8. bes8 <a c>2.
  }
>>
\oneVoice
}
}

\include "utils/books.ly"
