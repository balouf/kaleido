% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Fifty-Fifty" 
 	composer = "Juan Marquez"
 	tagline =  ""

}


accords = \chords {
  \repeat volta 2 
  {
  c1:maj7 s a:7 s
  d:m9 g:13
  \alternative {{e2:m7 a:7.9+ d:m9 des:7.11+}
                {c:9 bes:9 c1:9}}
  }
  g:m9 c:9 f:maj6 s
  a:m11 d:9 d:m9 g:7.5-
  c1:maj7 s a:7 s
  d:m9 g:13 c:9 s bes:9 s aes:maj9 s s s
  c:7.11+ s
}

theme = \new Staff {
	\time 2/2
	\tempo 2 = 96
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\repeat volta 2 {
g'4 c d r8 e8~2 r
g,4 cis d r8 e8~2 r
a,8 d4 e8 f e d c b a g f e d e f
\alternative {
{g2 c e4 r8 g~2}
{g,4 c bes r8 c~4 r r2}
}
}
\break\bar "||"
c,4 cis d es e f fis g d'2 c b c
d,4 dis e f fis g gis a e'2 d des8 b des2.
\break\bar "||" 
g,4 c d r8 e8~2 r
g,4 cis d r8 e8~2 r
a,8 d4 e8 f e d c b a g f e d e f
g4 c bes r8 c~4 r r2
g4 c bes r8 c~4 r r2
g4 c bes r8 c~4 r r2
\trio {g4 c bes} \trio {c g c}
\trio{bes c g} \trio{c bes c}
r1\rythm{2. 4~1}
r1	}
\fine
}


\include "utils/books.ly"

%{
convert-ly.py (GNU LilyPond) 2.24.4  convert-ly.py: Processing `'...
Applying conversion: 2.23.1, 2.23.2, 2.23.3, 2.23.4, 2.23.5, 2.23.6,
2.23.7, 2.23.8, 2.23.9, 2.23.10, 2.23.11, 2.23.12, 2.23.13, 2.23.14,
2.24.0
%}
