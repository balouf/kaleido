% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "One Bird, One Stone" 
 	composer = "Don Grolnick"
 	tagline = ""

}


accords = \chords {
  \repeat volta 6 {f2:7sus4 s4. f8:13.11+ s1 f2:m9.13- s4. f8:7 s1 }
  \repeat volta 2 {
  f2:7sus4 s4. f8:13.11+ s4. f8:7sus4 s2 f2:m9.13- s4. f8:7 s1
  f2:7sus4 s4. f8:13.11+ s2 f:7sus4 f1:m9.13- a2:7.8 d:maj7.5-
  f1:7sus4 f4.:13.11+ f8:7sus4 s2 f2:m9.13- s4. f8:7 s1
  s4 f2.:7sus4 f2:13.11+ f:7sus4 f1:m9.13-
  a:7.8 d2:maj7.13 g:13.11+ s8 c4.:7.8 b2:13
  }
  \alternative {{e1:m11 aes:m11}{e1:m11 aes:m11}}
  es:m11 es:7.8 a:maj7.5-/aes des:6.9 g:7.8 
  bes:maj7/c bes:13.11+/c bes:maj7/c bes:13.11+/c
  g:7.8 bes:maj7/c bes:13.11+/c bes:maj7/c e:7.8
  a:7sus4 s2 a:7.8 a1:7sus4 s2 a:7.8
  a1:7sus4 s2 a:7.8 a1:7sus4 s4. c2:13.9-.11+ f8:7sus4
  \repeat volta 4 {
  f1:7sus4 f:13.11+ f:m9.13- f:7
  }
  d2:maj9 g:13.11+ c:7.8 b:13 e1:m11 aes:m11
  es1:m11 es:7.8 a:maj7.5-/aes des:6.9 g:7.8
  bes:maj7/c bes:13.11+/c bes:maj7/c bes:13.11+/c g:7.8
  bes:maj7/c bes:13.11+/c  bes:maj7/c e:7.8
  a1:7sus4 s2 a:7.8 a1:7sus4 s2 a:7.8
  a1:7sus4 s2 a:7.8 a1:7sus4 c:13.9-.11+
  \repeat volta 2 {f2:7sus4 s4. f8:13.11+ s1 f2:m9.13- s4. f8:7 s1}
  R1*76
  s2 s4. a8:7sus4 s1 s2 s8 a8:7sus4 s4 s1
  s2 s4. a8:7sus4 s1 s4. a8:7sus4 s2 s1
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 164
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 6 {
bes4-.^"Piano on 1&2, bass&drum from 3, horns from 5" r r r8 b r1 aes4-. r r r8 a r1^"X6"
}
\break \mark \default
\repeat volta 2 {
r4^"Piano 1, horns 2" r8 es' f4-. c'8 d~ d4. es,8 r4 r8 <d bes'> <des c'>1 r
d'4. f8 g,4-. f8 g~ g2 r4 \tuplet 3/2 {a8 bes c} c4. es8~ es2 r1
r2 r8 d~ d bes16 f 
<< \voiceOne {
es4. f8~ f2~ f1
   }
   \new Voice {\voiceTwo
b,4. bes8~ bes4. <a d>8 <aes des es>1
   }
  >> \oneVoice
  r2 r8 <c es f>-.^"Horns both" <d f g>-. <es g aes>-^
  r2 \tuplet 3/2 {r4 g f} g2 r8 a bes c c4. es8~ es4 es,8 f~
  f2. r16 bes a bes a4. cis,8 b8. <des f>32 <es g> <f a>4-^ r4 r8. <fis a>32 <g bes>
<< \voiceOne {
b2~
   }
   \new Voice {\voiceTwo
gis4. g8
   }
  >> \oneVoice
}
\alternative {
  {<< \voiceOne {
b1~ b
   }
   \new Voice {\voiceTwo
fis1~ fis
   }
  >> \oneVoice
}
  {<< \voiceOne {
b1\repeatTie~ b2 bes4.^"Horns" des8
   }
   \new Voice {\voiceTwo
fis,1~ fis2 f4. aes8
   }
  >> \oneVoice}
}
\break \mark \default \bar "||"
<f bes>1 a4 \tuplet 3/2 {g g ges} ges~ ges1 r r4 r8 <f bes>-. <aes des>4--( <bes es>-.)
r2 r4 g8( e) r1 
r2 r16 es' d8~ d4~ d2. r4 r r8 <f, bes>\f \tuplet 3/2 {<aes des><f bes><aes des>} <bes es>4-^
r2 r4 <g g'>8 <e e'> r1 f8\cresc f f f f4 bes8 g~ g1\!
\break \mark \default \bar "||"
r2\mf r4 r8 <bes c>-^ \tuplet 3/2 2 {r2 des,4 c bes a} 
r2 r8 <bes' c>8-^ r4 r4 \tuplet 3/2 4 {r4 <a, c>8 <bes des>4 <a c>8} <bes des>4-^
r2\mf r4 r8 <bes' c>-^ \tuplet 3/2 2 {r2 des,4 c bes a} 
r2 r8 <bes' c>8-^ r4 r4 r8 <bes c>^"fine" r4 r8 <bes c>
\break \mark \default
\repeat volta 4 {s1^"Solos on DEF; last solo continue on G" s s s^"X4"}
s s s s
\break \mark \default \bar "||"
\repeat unfold 14 {s}
\break \mark \default \bar "||"
\repeat unfold 8 {s}
\break \mark \default
\repeat volta 2 {
  bes,4-. r r r8 b r1 aes4-. r r r8 a r1^"To A, al fine, no repeat (horns)"
}
\pageBreak
\mark "D1"
R1*16 <e fis a cis>2 <f a b e> <bes dis e gis> <a dis gis b> <a d fis bes>1 <ces des ges bes>
\break \mark "E1" \bar "||"
<ges des f aes> R1*4 f'2.~ f8 d e1 f8 f f f f4 d8 e~ e2.~ e8 d es1 R1*4
\mark "F1" \bar "||"
R1*8
\break \mark "D2" \bar "||"
R1*8 
bes4-. r r r8 b r1 aes4-. r r r8 a r1
bes4-. r r r8 b r1 aes4-. r r r8 a r1
R1*4
\break \mark "E2" \bar "||"
<< \voiceOne {
<des f>2. es4 <des ges>1 <es aes> <es aes>2.~ <es aes>8 <es aes> <f bes> <es aes> <f bes>2.
   }
   \new Voice {\voiceTwo
ges,4. aes8~ aes bes4. g4 a b2 a2~ a8 aes4 ges8 f2.~ f8 bes ces bes ces2.
   }
  >> \oneVoice
  R1*9
  \break \mark "F2" \bar "||"
  r2 r4 r8 <bes' c> r1 r2 r8 <bes c> r4 r1 r2 r4 r8 <bes c> r1 r4 r8 <bes c> r4 r8 a~ a2.~ a8 g~
  \break \mark "D3" \bar "||"
  g1 R1*7 bes,2.~ bes8 b~ b2. r4 aes2.~ aes8 a~ a1
  bes2.~ bes8 b~ b2. r4 aes2.~ aes8 a~ a1 R1*4
  \break \mark "E3" \bar "||"
  <ges aes f'>1 <fes ges es'> r r
  r2 r4 r8 f' a4 bes8 c r4 r8 f, r4 r8 f aes bes c4-.
  r4 r8 f, a4 bes8 c r f, aes bes c4-. r8 f, r aes r bes b4-. r 
  r1 r r r4 r8 f aes bes c4-.
  \mark "F3" \bar "||"
  R1*8
  \break \mark "G"
  \repeat volta 2 {
  bes,4-. r r r8 b r1 aes4-. r r r8 a r1
}
	}
}

theme = \staffViolon


\include "utils/books.ly"
