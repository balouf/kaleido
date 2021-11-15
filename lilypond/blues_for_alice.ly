% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Blues For Alice" 
 	composer = "Charlie Parker"
 	tagline = ""

}


accords = \chords {
\partial 8 s8
\repeat volta 2 {
f1:maj7 e2:m a:7 d:m g:7 c:m f:7
bes1:7 bes2:m es:7 f1:maj7 aes2:m des:7
g1:m c:7 a2:m d:7 g:m c:7 
}
\repeat volta 2 {
f1:maj7 e2:m a:7 d:m g:7 c:m f:7 \break 
bes1:7 bes2:m es:7 f1:maj7 aes2:m des:7 \break 
g1:m c:7 a2:m d:7 g:m c:7 
}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 108 
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 f'8->~
\repeat volta 2 {
	f4 c8 a e'4 c8 a
	d e b d cis bes g a~
	a4 f8 d g a f e
	\tuplet 3/2 {es g bes} d des r f, \tuplet 3/2 {f g f}
	c'4 bes8 f aes bes, r g'
	es' des bes b c f, g a~
	a4 e8 c d4 r8 des'~
	des4 b8 es, bes'4 r8 aes
	\tuplet 3/2 {g4 f' f} f8 d bes d,
	a' g c bes es4 r8 c~
	c4 a8 f g4 r8 d'8~
	d4 bes8 g a4 r8 \parenthesize f'->\laissezVibrer 
}
\break
\repeat volta 2 {
	\repeat unfold 12 {s1}
}
}
}


\include "utils/books.ly"