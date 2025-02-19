% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Eleven with Pride" 
 	composer = "G.B."
 	tagline = "A love song for Stef and Joe"

}


accords = \chords {
        a1.:7 s4
        d1:7 c2.:7
        a1:7 bes2.:7
        a1:7 es2.:7
        d1.:7 s4
        g1:7 c2.:7
        a1.:7 s4
        a1.:7 s4
        e1:7 es2.:7
        d1:7 des2.:7
        a1:7 c2.:7
        b1:7 bes2.:7
%
        a1.:7 s4
        d1:7 c2.:7
        a1:7 bes2.:7
        a1:7 es2.:7
        d1.:7 s4
        g1:7 c2.:7
        a1.:7 s4
        a1.:7 s4
        e1:7 es2.:7
        d1:7 des2.:7
        a1:7 c2.:7
        b1:7 bes2.:7
%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 7/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c''' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
e,8 es d c cis4 r8 a g4 r8 fis e4
e'8 f fis a e4 r8 a, g4 r8 fis e4
e'8 es d c cis4 r8 a g4 r8 fis e4
fis8 a4 fis8 b4 g8 cis4 a8 d4 b8 es
e8 f fis a e4 r8 a, g4 r8 fis e4
e4 a b8 c r d es e d4 r8 cis
a g e a, r cis r d4. es8 e4.
a8 c d4 a8 g e4 g a r
fis'8 gis fis e d4 r8 b bes4 r8 as g4
f'8 g f es des4 r8 bes a4 r8 g fis4
a2~ a8 b~ b2 c~  c8 d4.~  d4 es2~ es4 r
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup \fill-line {
  \column {
    \pattern #3 #Y #1.5 \null
  }
}

\repeat unfold 12 {s1 s2.}\bar "|."
% c c c c c c c c

 } 
}


\include "utils/books.ly"
