% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "I remember Clifford" 
 	composer = "Benny Golson"
 	tagline = ""

}


accords = \chords {
  s4 aes2.:maj7 g2:7.5+ bes:7.9- g:7.9- g:7/b
  c4:m7 bes:m7 aes:m7 ges:m7 f1:m7
  bes2.:sus4 bes4:7.9-
  \repeat volta 3 {
  es2:maj7 g:7 aes:maj7 a:dim bes:7 b:dim c:m7 c:m7/bes
  \alternative {
  {a:m7.5- d:7.9- g:m7 g:m7/f e:m7.5- a:7.9- f:m7 bes:7.9-}
  {a:m7.5- d:7.9- g:m7.5- c:7.9- f:m7 bes:7.5+ g:m7 aes:maj7
   a:m7.5- d:7.9- g:m7 c:7.9- f:m7 bes:7.8 es1:maj7
   d2:m7.5- g:7.9- c:m7 c:m7/bes a:m7.5- d:7.9- g4:m7 c:7 f:m7 bes:7
  }
  {a2:m7.5- d:7.9- g:m7.5- c:7.9- f:m7 bes:7.8 es1:6}
  }
  }
}

theme = \new Staff {
	\time4/4
	\tempo "Med. Ballad" 4 = 96 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
r8^"Intro" c es g bes aes es f g g4.~2 r8 g b d f4. d8
es1 r8 c, es f g4 es8 c es8 4. r4 bes'
\break
\repeat volta 3 {
g2._"(fine)" f8 d es2 r8 f g aes bes4. 8 b aes d b c2 r8 g c d
\break
\alternative {
{es2. d8 c bes16 c d4. r8 d, g a bes2. a8 g aes2. bes4
\break}
{es2 r8 f, bes c des2. r8 c f,4. c'8 fis,4. d'8 g,4. es'8 c4. d8 \break
\bar "||"
es2 d8 c bes c d4 des r8 c, es f g c, es f ges4 ces bes2. f8 g \break
aes4. 8 bes aes g f g2 r8 g c d es4. 8 f es d c d g, bes d c4 bes \break
}
{es2 r8 f, bes c des2 r8 c, es f g c, es f ges4 d es1_"Last X D.C. al fine"}
}
} \fine
}
}
#(define raggedlast #f)
\include "utils/books.ly"
