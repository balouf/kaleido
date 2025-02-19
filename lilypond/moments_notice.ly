% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Moment's Notice" 
 	composer = "John Coltrane"
 	tagline = ""

}

\layout {ragged-last = ##t}


accords = \chords {
s8 e4.:m7 a2:7 f:m7 bes:7 es1:maj7 aes2:m7 des:7
s8 d4.:m7 g2:7 es:m7 aes:7 des1:maj7 d2:m7.5- g:7
c1:m7 bes2:m7 es:7 aes1:maj7 des:9
g2:7 c:7 f:m7 bes:7 es1/bes f:m/bes
g:m/bes f:m/bes es2/bes f:m/bes g:m/bes f:m/bes es4 s s2 s1
\repeat volta 2 {
s8 e4.:m7 a2:7 f4:m7 bes:7 s2 s8 es4.:maj7 s2 aes:m7 des:7
s8 d4.:m7 g2:7 es4:m7 aes:7 s2 s8 des4.:maj7 s2 d:m7.5- g:7
c1:m7 bes2:m7 es:7 aes1:maj7 
}
\alternative{{des:9
g2:7 c:7.5+ aes:m7 des:7 ges1:maj7 f4.:m7 bes8:7 s2
}{des1:9
g2:7 c:7 f:m7 bes:7
es1/bes f:m/bes
g:m/bes f:m/bes es2/bes f:m/bes g:m/bes f:m/bes es4 s s2 s1}}
es:7.9+
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 236
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
r8^"Intro" g'4. g4-. g-. g4. f8 g f r bes~ bes1 r \break
r8 f4. f4-. f-. f4. es8 f es r aes~ aes1 g2 f4. es8~ \break
es1 c' bes2 g es f4. g8~
g2 es4. f8~ f4. es8 d es f g es1 f
g f es2 f g f es4-^ r r2 r1
\break 
\repeat volta 2 {
  r8 g4. g4-. r8 g~ g4 g-. r8 g r4 r8 g4. aes4-. bes-. bes4. aes8~ aes2
  \break
  r8 f4. f4-. r8 f~ f4 f-. r8 f r4 r8 f4. g4-. aes-. g2 f \break
  es1 c' bes2 g   
}
\alternative {
  {es f4-. r \break
  r8 g4. aes2 bes ces4. des8~ des4. bes8 ges es ges es~ es4. f8 r2 \break 
}
  {es f4. g8~
  g2 r4 es-. es2 f4. es8~ es1 f
  g f es2 f g f \mark \markup { \musicglyph "scripts.coda" } es4-^ r^"Solo break" r2 r1}
}
\bar "|."
\break
\mark \markup { \musicglyph "scripts.coda" }
ges1\fermata

\bar "|."
	}
}

\include "utils/books.ly"