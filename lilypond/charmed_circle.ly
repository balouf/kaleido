% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 18)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Charmed Circle" 
 	composer = "Cedar Walton"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {e1 s s s s s s}
\alternative {{s}{s}}

\repeat volta 2 {f:maj7.5- s e:7sus4 s2 e:7}
d2/e es/f c/d a4./b bes8/c s1 s
a2:13.11+ bes:13.11+ g:13.11+ e4.:13.11+ f8:13sus4 s1 s

\repeat volta 2 {bes:maj7.5- s a:7sus4 s2 a:7}
a2:13.11+ bes:13.11+ g:13.11+ e4.:13.11+ f8:13sus4 s1 s
d2/e es/f c/d a4./b bes8/c s1 s

f1:maj7.5- s e:7sus4 s2 e:7
f1:maj7.5- s e:7sus4 s2 e:7

\repeat volta 2 {e1 s s s s s s}
\alternative {{s}{s}}

\repeat volta 2 {c1:13 s bes:13.11+ s}
\repeat volta 2 {c1:13 s bes:13.11+ s}
\repeat volta 2 {c1:13 s bes:13.11+ s}
}

theme = \new Staff {
	\time 2/2
	\tempo 2 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\set Timing.baseMoment = #(ly:make-moment 1/4)
\set Timing.beatStructure = 1,1,1,1

\repeat volta 2 {
<a' b e>1~^"piano" <a b e>2 <g a d>4. <e f b>8~
<e f b>1~ <e f b>2 <f g c>4-. <g a d>-.
<a b e>1~ <a b e>2 <g a d>4-. <e f b>~
<e f b>1~ 
}
\alternative {
  {<e f b>2 \times 2/3 {r4  <f g c>4 <g a d>} }
  {<e f b>1\repeatTie}
}
\break
% A
\mark \default
\repeat volta 2 {
<< \voiceOne {
e2.^"all" d8 e g4 f e d
b d8 b8~ b2~ b1
   }
   \new Voice {\voiceTwo
a1 b4 a g f a1~ a2 gis
   }
>>
}
\break
fis' g e cis4. d8~ d1~ d
\break
fis'2 g e cis4. d8~ d1~ d
\break
% B
\mark \default
\repeat volta 2 {
<< \voiceOne {
a2. g8 a c4 bes a g
e g8 e8~ e2~ e1
   }
   \new Voice {\voiceTwo
d1 e4 d c bes d1~ d2 cis
   }
>>
}
\break
fis g e cis4. d8~ d1~ d
\break
d'2 es c a4. bes8~ bes1~ bes
\bar "||"
\break
% C
\mark \default
<< \voiceOne {
e2. d8 e g4 f e d
b d8 b8~ b2~ b1
e,2. d8 e g4 f e d
b d8 b8~ b2~ b1
   }
   \new Voice {\voiceTwo
<a' b>1 b4 a g f a1~ a2 gis
<a, b>1 b4 a g f a1~ a2 gis
   }
>>
\break
\mark \default
\repeat volta 2 {
<a' b e>1~^"piano" <a b e>2 <g a d>4. <e f b>8~
<e f b>1~ <e f b>2 <f g c>4-. <g a d>-.
<a b e>1~ <a b e>2 <g a d>4-. <e f b>~
<e f b>1~ 
}
\alternative {
  {<e f b>2 \times 2/3 {r4  <f g c>4 <g a d>} }
  {<e f b>1\repeatTie^"fine."}
}
\break
\mark \default
\repeat volta 2 {
e4-.^"piano" d8 e f e d e~ e4 d8 e f4 e8 d
e4-. d8 e f e d e~ e4 d8 e f4 e8 d
}
\break
\repeat volta 2 {
e4-. \times 2/3 {d8 e fis} \times 2/3 {g fis e} d e
fis g a bes c d e4-.
e,4-. \times 2/3 {d8 e f} \times 2/3 {g f e} d e
f g aes bes c d e4-.
}
\break
\repeat volta 2 {
e,4-.^"horns" d8 e f e d e~ e f16 e d8 e g f e d
e4-. d8 e f_"Solos on ABC. After solos, play DCED al fine." e d e~ e f16 e d8 e g f e d
	}

}
}


\include "utils/books.ly"