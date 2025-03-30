% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "After the Rain" 
 	composer = "John Coltrane"
 	tagline =  ""

}


accords = \chords {
  \partial 4 s4
  \repeat volta 2 {
  bes2./aes g4/aes aes1:maj7
  des2.:maj7/aes des4:dim/aes aes1:maj7
  des2:maj7/aes des:dim/aes
  aes:maj7 g/aes des:m7+ des:m6/es aes1:maj7
  \repeat unfold 4 {es:7/aes aes:maj7}
}
\repeat unfold 4 {es:sus4.7 aes:maj7}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 72
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\partial 4 es8 8
\repeat volta 2 {
bes'2. g4 es2 r4 8 aes c2. bes4 es,2 r4
8 c'8 2 bes aes g4. f8 c2 bes4. es,8 aes2 g
\break
r1 r1 r1 r1 r1 r1 r1 r2 r4 es'8 8
}
\break
2. g4 es2 r4 4 2. bes'4 es,2 r4 4 2. bes'4 c2 r4
8 aes es2. bes8 f es1\fermata\fine
	}
}

\include "utils/books.ly"
