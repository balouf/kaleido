% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.1"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Equinox" 
 	composer = "Coltrane"
 	tagline = ""

}


accords = \chords {
 \partial 8 s8
 \repeat volta 2 {
 c1:m7 s s s
 f:m7 s c:m7 s
 aes:7 g:7 c:m7 s}
}



sopran = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key g \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 g'8
\repeat volta 2 {
  es'4. c8~ 2~ 2.~ 8 g
  es' c8~ 2~ 8 g c es r4 r r8 es \break
  f4. c8~ 2~ 2.. f8 es4. c8~ 4. g8 c es r4 r2 \break
  r8 d r4 d4. c8 d4. c8 es c es4 c1~ 2.. \parenthesize g8
}
}
}


	
basse = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key g \minor
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 r8
\repeat volta 2 {
c4. 8~ 4 4~ 2 g4 bes
c4. 8~ 4 4~ 2 4 es
f4. 8~ 4 4~ 2 g,4 bes
c4. 8~ 4 4~ 1 aes g
c4. 8~ 4 4~ 2 g4 bes

}
	}
}


theme = <<
\sopran
\basse
>>


\include "utils/books.ly"
