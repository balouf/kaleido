% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Cry Me A River" 
 	composer = "Arthur Hamilton"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
		\repeat volta 2 {
			c2:m aes/c c:m6 c:m7
			f:m7 bes:7 es:maj7 d4:m7 g:7
			g2:m7 c:7.9- c:m7 f:9
			b:9 bes:7sus4
		}
		\alternative {{es:6.9 g:7.5+}{es:6.9 d:7.9+}}
		g:m7 e:m7.5- es:7.11+ d:7.9-
		g:m7 e:m7.5- aes:7.9+ d:7.9-
		g:m7 e:m7.5- es:7.11+ d:7.9-
		g1:maj7 d2:m11 g4:7sus4 g:7
			c2:m aes/c c:m6 c:m7
			f:m7 bes:7 es:maj7 d4:m7 g:7
			g2:m7 c:7.9- c:m7 f:9
			b:9 bes:7sus4
			es1:6.9
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 72 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
d'2~ d8 c g es d c~ c2.
r8 c es c' bes4 bes g2~ g8 g fis g
c4~ \tuplet 3/2 {c8 des c} des c4.
r8 g~ \tuplet 3/2 {g f es} f g~ g4
r8 ges f es f es c es
}
\alternative {{es1}{es}}
\bar "||"\break
r8 g a bes d, e fis g
a g bes a~ a4. g8
bes c d c~ c4 bes8 c~ c1
r8 g a bes d, e fis g
a g bes a~ a2
r8 a16 g a8 g a g b g
r8 a16 g a8 g a g b g
\bar "||"
d'2~ d8 c g es d c~ c2.
r8 c es c' bes4 bes g2~ g8 g fis g
c4~ \tuplet 3/2 {c8 des c} des c4.
r8 g~ \tuplet 3/2 {g f es} f g~ g4
r8 ges f es f es c es es1
\bar "|."
	}
}


\include "utils/books.ly"