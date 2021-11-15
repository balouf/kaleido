% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 29)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 




\header {
	title = "Billie's Bounce" 
 	composer = "Charlie Parker"
 	tagline = ""

}


accords = \chords {
		%\set chordNameExceptions = #chExceptions
	\partial 8 s8
	\repeat volta 2 {f1:7 bes2:7 b:m7.5-
	f1:7 f1:7 bes:7 bes:7
	f:7 a2:m d:7 g1:m c:7 a2:m d:7}
	\alternative {{g:m c:7}{g:m c:7}}
	f1:7 bes2:7 b:m7.5-
	f1:7 f1:7 bes:7 bes:7
	f:7 a2:m d:7 g1:m c:7 a2:m d:7 g:m c:7

	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 8 c8
\repeat volta 2 {
b c f gis a f d f~
f d f r r f~ f d
f r r f~ f d f d
gis a \tuplet 3/2 {f16 g f} d8 f g f f
r4 r8 a bes f r aes~
aes bes~ bes4 es8 c f es
r f c4 r4 r8 e->~
e4 g,8 e fis es' c cis
d4 r8 g \tuplet 3/2 {fis16 g fis} d8 bes f
f'4 r8 f e e d d
c4 r8 f,->~ f d f4
}
\alternative {{r8 f->~ f d f4 r8 c}{r8 f->~ f d f4 r}}
\bar "||" \break
\repeat unfold 12 {s1} \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"