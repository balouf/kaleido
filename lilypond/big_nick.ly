% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 

\header {
	title = "Big Nick" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {
  g2:maj7 e:7 a:m7 d:7
  g2:maj7 e:7 a:m7 d:7
  g b:dim c:7 cis:dim
  g:maj7/d e:7
}
\alternative {
  {a:m7 d:7}
  {a:m7 d:7 g2:maj7 e:7 a:m7 d:7}
}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
  r8 cis d dis e f fis d' b4-. r8 g e a fis4
  r8 cis d dis e4. d'8 \break  b fis e4 r8 a \tuplet 3/2 {e c e}
  d4-. r8 d a'4 r8 g \tuplet 3/2 {d'16 e d} c8 g'4~ g4. g,8 \break 
  e'4-. r8 d, d'4-. r8 d,
}
\alternative {
  { b'4.\prall a8 \tuplet 3/2 {e16 f e} c8 fis4 \break }
  { b4.\prall a8 \tuplet 3/2 {e16 f e} c8 fis d
  \tuplet 3/2 {a'16 bes aes} g8~ g4~ g4. f16 g f4. d16 f d2^"Solos on 1 Only" \bar "|."}
}
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120
	\set Staff.midiInstrument = "trumpet"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"