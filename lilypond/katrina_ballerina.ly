% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Katrina Ballerina" 
 	composer = "Woody Shaw"
 	tagline = ""

}


accords = \chords {
  s2. \repeat volta 2 {
  g:m f:7 es:maj7 f:7 aes:maj7.4+ ges:maj7.4+}
  \alternative {{ges4:m aes:m d:7.9+ s2.}
                {a4.:m7.5- d:7.9+ g2.:m}}
  aes:maj7 bes:7.4+ aes:maj7 bes:7.4+
  aes:maj7 bes:7.4+ aes:maj7 bes:7.4+
  a:maj7 b:7.4+ a:maj7 b:7.4+
  d4.:m c:m c:m bes:m bes:m aes:m d2.:7.9+
  g:m f:7 es:maj7 f:7 aes:maj7.4+ ges:maj7.4+
  a4.:m7.5- d:7.9+ g2.:m
  bes:7.4+.9- s s s s s s s
}

theme = \new Staff {
	\time 3/4
	\tempo 4 = 180
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r4 r8 a'~ a d,
\repeat volta 2 {
  g d' r d~ d c
  d2~ \tuplet 3/2 {d8 c bes}
  c d4-. bes-. g8
  d2~ \tuplet 3/2 {d8 d c}
  \tuplet 3/2 {d bes' g~} g4. bes,8
  \tuplet 3/2 {c aes' f~} f2
}
\alternative {
  {e8 b fis' cis f' es~ es2~ es8 d,}
  {es c bes' d, \tuplet 3/2 {a' bes g~} g2.}}
\bar "||" \break
c,4. es4 c8 g'2~ \tuplet 3/2 {g8 f g}
f d4 bes d16 bes c2.
r8 c4 es4 c8 g'2~ \tuplet 3/2 {g8 f g}
f2~ f8 d \tuplet 3/2 {bes d c~} c2
r8 des e des ges4 aes2.~ aes~ aes
f'8 d c2 es8 c bes2 
des8 bes aes4 es8 f~ f2~ f8 d
\bar "||" \break
  g d' r d~ d c
  d2~ \tuplet 3/2 {d8 c bes}
  c d4-. bes-. g8
  d2~ \tuplet 3/2 {d8 d c}
  \tuplet 3/2 {d bes' g~} g4. bes,8
  \tuplet 3/2 {c aes' f~} f2
  es8 c bes' d, \tuplet 3/2 {a' bes g~} g2.
  \bar "||" \break
s2.^"Interlude (before/after solos)" s s s s s s s
\bar "|."
}
}


\include "utils/books.ly"
