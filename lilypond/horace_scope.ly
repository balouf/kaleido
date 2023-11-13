% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Horace Scope" 
 	composer = "Horace Silver"
 	subsubtitle = "A: 1, 2 at start; 1, 3 at end"
 	tagline = ""

}


accords = \chords {
  
  \partial 4 s8 
  des1:7.9+ bes1:7.9+ a:7 fis:m7
  bes2:7.9+ a:7 fis1:m/aes des8:7.9+ s1 s1
  \repeat volta 3 {
  des1:maj7 e2:m7 a:7
  es1:m7 aes2:m7 des:7
  des2..:m7 aes2.:7.5+ s8
  g1:13 g2:13 s8 ges:13 s2
  des1:9/f bes:m7 es2..:m7 aes1:7.5+ des8:7.9+
  }
  \alternative {
  {des2..:7.9+ bes1:7.9+ a:7 aes:7.5+.9+ s8}
  {des2..:7.9+ bes1:7.9+ a:7 fis:m/aes des8:7.9+ s1 s1}
  {des2..:7.9+ bes1:7.9+ a:7 fis:m7 bes2:7.9+ a:7 fis1:m7/aes des:7.9+ s8}
  }
  \repeat volta 2 {
  des1:maj7 e2:m7 a:7
  es1:m7 aes2:m7 des:7 \break
  des1:m7 aes:7.5+.9+
  g:13 ges:13 \break
  des:9/f bes:m7.9+ es:m7 aes2..:7.5+.9+ des8:7.9+
  }
  \alternative {{des2..:7.9+ bes1:7.9+ a:7 aes:7.5+.9+ s8}{des2..:7.9+ bes1:7.9+ a:7 fis:m/aes des8:maj7}}
  \repeat volta 2 {
  s8 des2..:maj7 es4.:m7 a2:7 es:m7 s8 aes2:7 aes4.:m7 des2:7.11+.9+ des8:m7
  s8 des2..:m7 aes2.:7.5+ g1:13 s4 ges1:13 des:9/f bes:7.9+ es:m7 aes:7.5+.9+
  s8 des1:7.9+ bes:7.9+ a2..:7
  }
    \alternative {
  {s8 aes2.:7.5+.9+ des8:maj7}
  {s8 aes2.:7.5+.9+ s8}
  }

  }
 
  
theme = \new Staff {
	\time 4/4
	\tempo 4 = 186
	\set Staff.midiInstrument = "trumpet"
	\key des \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 4 des8^"Intro" fes~ 
fes des fes2 des8 fes~
fes des fes fes des fes des fes~
fes des fes2 des8 fes~
fes des fes fes des fes des fes~^"8~ | 4. 8~ 4. 8~ |"
fes des fes2 des8 fes~
fes des fes fes des fes des fes
r1^"Drum" r1 \break \mark \default
\repeat volta 3 {
  aes,4-. r8 es' d c des a~ a1
  bes4-. r8 f' e d es ces~ ces1
  des4-. r8 bes' a g aes <e c>~
  <e c>2. <e b>4~ <e b>2. <e b>4~
  <e b>4 <e b>8 <es bes>8 r4 des-.
  f4. aes8 r4 r8 f es c \tuplet 3/2 {des f aes} c es d c
  des bes ges es f es r4^"8|r4 2" r2 r4 des8 fes~ \break
} 
\alternative {
  {fes des fes2 des8 fes~
fes des fes fes des fes des fes~ 
fes des fes2 des8 b'~
  b a e c b e a, g \break}
  {fes'\repeatTie des fes2 des8 fes~
fes des fes fes des fes des fes~
fes des fes2 des8 fes~
fes des fes fes des aes c des r1^"Solo break -> B" r1 \break}
  {fes8\repeatTie des fes2 des8 fes~
fes des fes fes des fes des fes~
fes8 des fes2 des8 fes~
fes des fes fes des fes des fes~
fes des fes2 des8 fes~
fes des fes fes des fes des <ces fes>~ <ces fes>1\fermata^"fine" \break}
}

\break \mark \default
\repeat volta 2 {
\repeat unfold 11 {r1} \improvisationOn r4 r r des'8 des~}
\alternative{
{des2.. des8~ des2.. des8~ des2.. des8~ des1 \break}
{des2.. des8~ des2.. des8~ des2.. des8~ des2 \improvisationOff r4 r8 <aes f>^"Last" \break}}
\repeat volta 2 {r8 <aes f>4. <aes f>4-. <aes f>4-.
<a fis>8 <b, g> <b g> <b g>~ <b g>4. <bes' ges>8~ 
<bes ges>4 <ges des>8 bes, <f' des> <es c> r4
<ces ges>8 <es ces> <bes' ges> <g e>~ <g e>4 r8 <aes e> \break
r8 <es' ces>4. <des bes>8 <ces aes> <aes fes> <fes des>
<< { \voiceOne
     ges aes ges aes r4 e~ e8 fis e4-. fis-. r des8 fes des fes
}
  \new Voice { \voiceTwo c2. b4->~ b2. r4 bes2 }
>> \oneVoice r2 \break
r r8 des fes ges \tuplet 3/2 {g ges fes} ges des fes4 des-. r2 r8 des fes \acciaccatura g aes
r8 ces4. ges16 g ges fes des8 fes~ \break
fes2^"r8" ges16 g ges fes des8 fes~ fes2^"r8" ges16 g ges fes des8 fes~ fes2^"r8"  ges16 g ges fes des8 ces~
}
\alternative {{ces2. r8 <f aes>}{ces2.\repeatTie_"To A" r4}} \bar "|."
	}
}


\include "utils/books.ly"
