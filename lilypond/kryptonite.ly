% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Kryptonite" 
 	composer = "James Spaulding"
 	tagline = ""

}


accords = \chords {
  \partial 4. s4.
  \repeat volta 2 {aes1 s s s s s s s}
  s s s s s
}

theme = \new Staff {
	\time 2/2
	\tempo 2 = 144
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\override Glissando.style = #'zigzag
\partial 4. g'8 c g'
\repeat volta 2 {
d1^"Lydian all the way" es2 aes g aes, r4 d aes' d \break
aes1 g4 aes g d aes1 c2 f
} \break
d2\glissando aes'4 d,~ d\glissando aes'
d,2\glissando aes'4 d,2\glissando aes'4^"fine."
d, aes' bes8 c r d~ d1^"Blow on Lydian"
}
}


\include "utils/books.ly"