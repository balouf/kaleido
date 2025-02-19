% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Lester Left Town" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  \repeat volta 3
  {d1:m7.5- g:7 c2..:m7 a1:m7.5- s8
   d1:m7.5- g:7 c2..:m7 a1:m7.5- s8
   f1:m7 b2:m7 e:7 es:m7 d:7.9+ aes1:maj7
   e:7.9+ aes:7.5-}
  \alternative
  {
  \volta 1 {bes2:m7 es:7 aes1:maj7}
  \volta 2 {f2:m7 bes:7 es1:maj7
  f:m7 bes:7 es:maj7 des:maj7
  c2:m7 bes:m7 a:m7 d:7 g2..:m7 e1:m7.5- s8
  es2:7 d:7 cis:m7 fis:7 b1:maj7
  bes2:m7 es:7 aes1:maj7 g2:m7.5- c:7
  f:m7 bes:7 es:m7 aes:7
  }
  \volta 3 {f2:m7 bes:7 es1:maj7}
  }
}


theme = \new Staff {
	\time 4/4
	\tempo 4 = 204
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
\partial 8 g'8
\repeat volta 3
{
d'4 des c b bes a aes g \trio{fis8 g fis} c es 
r2 r r4  r8 g \break
d'4 des c b bes a aes g \trio{fis8 g fis} c es 
r2 r1 \break
r8 c es aes c es r g~4 es8 c bes es c bes
ges2 f4. es8~2 r8 c es aes g2.. es8~2
r8 c es aes
\alternative {
  \volta 1 {bes2.. g8~2. r8 8 \break}
  \volta 2 {bes2.. f8~2. r8 c' \bar "||"
  bes1~2.. g8~1 r2  g4-. bes-. \break d2. g,4-.
  d'2 c bes4. g8~2 r g4-. bes-. \break c1
  bes4 g8 d' cis2 ais4. fis8~2
  r4 r8 bes c4. bes8 \break 
  d4 es e f~f g e es f d-.r^\rythm{4 r4}
  r8 g, des'4 es c-.\rythm{r4 4} r8 g}
  \volta 3 {\break bes2.. f8~1\fine}
}
}
}
}

\paper {
ragged-last = ##t
}

\include "utils/books.ly"
