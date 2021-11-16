% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "In Case You Missed It" 
 	composer = "Bobby Watson"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  s8 g2.:m7 d1:m7.11 s8
  s8 aes2./bes es1/f s8
  \break
  s8 g2.:m7 d1:m7.11 s8
  aes2/bes s8 f4:m7 es1:maj7 s8
  }
  \break
  
  s8 g2.:m7 d1:m7.11 s8
  s8 aes2./bes es1/f s8
  s8 g2.:m7 d1:m7.11 s8
  aes2/bes s8 f4:m7 es1:maj7 s8
  
  g2..:m7 d1:m7.11 s8 aes2./bes es1/f s4
  g2..:m7 d1:m7.11 s8 aes2/bes f4.:m7 es1:maj7 s8
  
  g2..:m7 d1:m7.11 s8 aes2./bes es1/f s4
  g2..:m7 d1:m7.11 s8 aes2/bes f4.:m7 es1:maj7 s8

  g2..:m7 d1:m7.11 s8 aes2./bes es1/f s4
  g2..:m7 d1:m7.11 s8 aes2./bes es1/f s4
  g2..:m7 d1:m7.11 s8 aes2/bes s8 f4:m7 es1:maj7 s8
  
  g1:m7 f2:m7 bes:7 es1:maj7 d:7.5+.9+
  c2:sus4.9 b:sus4.9 bes1:sus4.9 a:m11 d:7.5+.9+
  g2:m7 fis:m7 f:m7 bes:7 es1:maj7 aes:13
  c2..:m7 f4.:13 d2./fis g2..:m7 d1:m7.11 s8 aes2../bes es8/f
  es1/f g2..:m7 d1:m7.11 s8 aes2/bes s8 f4:m7 es1:maj7 s8
  
  \repeat volta 2 {s8 g2.:m7 d1:m7.11 s8 s8 aes2./bes es1/f s8}
  \repeat volta 3 {s8 g2.:m7 d1:m7.11 s8 s8 aes2./bes es1/f s8}
  s8 g2.:m7 d2:m7.11 r2 s8 aes2/bes s8  f4:m7 es1:maj7 s8


}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.markFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
\repeat volta 2 {
<<
	\voiceOne {
	r8 c' r4 c4. c8~ c4. c8~ c bes g4-.
        r8 c r4 c4. c8~ c4. des8 c bes g4-.
        r8 c r4 c4. c8~ c4. c8~ c bes g4-.
        bes4. bes8 r c r d~ d2. r4
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	r8 g, r4 g4. d'8~ d4. d8~ d c bes4-.
        r8 f r4 f4. bes8~ bes4. bes8 f g bes4-.
        r8 g r4 g4. d'8~ d4. d8~ d c bes4-.
        f4. f8 r g r bes~ bes2. r4
	}
>>

}
\oneVoice
\improvisationOn
r8 c r4 c4. c8~ c4. c8~ c4 c4-.
r8 c r4 c4. c8~ c4. c8~ c4 c4-.
r8 c r4 c4. c8~ c4. c8~ c4 c4-.
c4. c8 r c r c
\improvisationOff
r2 r4 f,,-. \bar "||"
\mark \default
bes4. f8 bes d r f~ f4 a-. c-. r 
r2 r4 es-. bes4. g8 c bes g f~ 
\break
f2 d4.-\repeatTie c8~ c2 \tuplet 3/2 {des8 c bes} c d 
bes4. g8-\bendAfter #-3 r2 r4 r8 f' d c g4-.
\break
bes4. f8 bes d r f~ f4 a c es-^\repeatTie 
r2 r4 es-. bes4. g8 c bes g f~ 
\break
f2 d4.-\repeatTie c8~ c2 \tuplet 3/2 {des8 c bes} c d 
bes4. bes8 r c r d~ d4 f-. a-. bes8 c
\break
r2 <g d>4. <c g>8~ <c g>2.. <c g>8 
<es bes>4-. <c g>8 <f c>~ <f c>4. <d bes>8 <c g>4-- <bes f>-. <g d> <bes f>8 <c g>
\break
r2 <g d>4. <c g>8~ <c g>2.. <c g>8 
<es bes>4-. <c g>8 <f c>~ <f c>4. <d bes>8 <c g>4-- <bes f>-. <g d>8 <bes f> <des aes> <c g>
\break
r2 <g d>4. <c g>8~ <c g>2. <c g>8 <c g>
<g' d> <g d> r4 <c, g>8 <c g> <f c> <f c> r4 <c g>8 <c g> <es bes> <es bes> r d~
\break \bar "||"
\mark \default
d2~ d8 c d es~ es4 f-. d c8 d~
d2~ d8 c d es~ es4. f8-. d4 c8 d~
\break
d4 r r8 c d es~ es4 f-. d c 
d c8 d~ d2 r r8 f es d~
\break 
d4 f-. g a8 bes~ bes2 g4-. f-.
d8 es16 d c8 bes~ bes2 r8 f \tuplet 3/2 {ges bes d} f4-- es-.
\break
d-- c-. bes4. d8~ d es d c bes4-. c~
c1~ c <d bes>4 <c g>-. <bes f>4. <d bes>8~
\break
<d bes> <es c> <d bes> <c g> <bes f>4-. <c g>->~ 
\mark \markup { \musicglyph "scripts.coda" }
<c g>1 r4 r8 f d c g4->
<bes f>4. <bes f>8 r <c g> r <d bes>~ <d bes>2.^"Solo on AB" r4
\break \bar ".|:-||"
\repeat volta 2 {
\mark \markup { \musicglyph "scripts.coda" }
\improvisationOn
r8^"Solos ad lib" c r4 c4. c8~ c4. c8~ c4 c4-.
r8 c r4 c4. c8~ c4. c8~ c4 c4-.
}
\break 
\repeat volta 3 {
\improvisationOff
r8^"On Cue" c,\mp r4 c4. c8~ c4. c8~ c bes g4-.
r8 c r4 c4. c8~ c4. des8 c bes g4-.^"3X"
}
r8 <c'g>\f r4 <c g>4. <c f,>8
\tempo 4 = 112
r4 r8 f d c g f
<f bes> <f bes> r <f bes> r <g c> r <bes d>~ <bes d>1\fermata \bar "|."
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 256
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"