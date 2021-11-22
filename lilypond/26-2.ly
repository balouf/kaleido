% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "26-2" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  f2:maj7 aes:7 des:maj7 e:7 a:maj7 c:7 c:m7 f:7
  bes:maj7 des:7 ges:maj7 a:7 d:m7 g:7 g:m7 c:7
  f2:maj7 aes:7 des:maj7 e:7 a:maj7 c:7 c:m7 f:7
  bes:maj7 aes:7 des:maj7 e:7/fis a:maj7 c:7 f:maj7 s
  c:m7 f:7 e:m7 a:7 d:maj7 f:7 bes1:maj7
  es:m7 aes:7 des:maj7 g2:m7 c:7
  f2:maj7 aes:7 des:maj7 e:7 a:maj7 c:7 c:m7 f:7
  bes:maj7 aes:7 des:maj7 e:7/fis a:maj7 c:7 f:maj7 c:7
  c4.:m7 f2:7 bes1:maj7 aes:7 des:maj7 e:7/fis a:maj7 c8:7
  s1 s2 f:maj7 s1
  }

theme = \new Staff {
	\time 4/4
	\tempo 4 = 196
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
% \compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 8 a''8 
\bar "||" \mark \default
r c r a bes ges es bes' aes f des aes fis' d r fis
e d cis e d d bes g a4 f8 es~ es4 r
d'8 cis d f es ces aes des bes4-. r8 bes a aes g b
a f e d f f d g~ g4 r r r8 a'
r c r a bes ges es bes' aes f des aes fis' d r fis
e d cis e d d bes g a4 f'8 es~ es4 r
r d8 f es des bes ges f4-. r8 aes d cis b gis
a b cis e a g r4 a8 c, d f~ f4 r
\bar "||" \mark \default \break
r2 d8 c bes g e4-. r8 g b d cis e
a, g fis a es f a d bes f a bes~ bes4 r
r f'2. es8 f es c~ c es c aes~
aes4. f8 bes c r4 r2 r4 r8 a'
\bar "||" \mark \default \break
r c r a bes ges es bes' aes f des aes fis' d r fis
e d cis e d d bes g  \mark \markup { \musicglyph "scripts.coda" } 
a4 f'8 es~ es4. g8
f es d f es4-. r8 ges f des aes f b4. e,8
a4-. cis8 e bes c r4 a'8 c, d f r2\bar "|."
\break
\mark \markup { \musicglyph "scripts.coda" }
a,4 f'8 es r4 f,8 d'~ d2. c8 ges~
ges2. aes8 f'~ f2. e8 b~ b2. cis8 gis'~
gis2. fis8 bes, r^"Break" c,16 d e f g a bes c d e f g a bes c1~ c\fermata \bar "|."
	}
}

\include "utils/books.ly"

%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0
%}
