% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Blues Connotation" 
 	composer = "Ornette Coleman"
 	tagline = ""

}


accords = \chords {
		s1
		\repeat volta 2 {
		bes:7 es:7 bes:7 bes:7
		es:7 es:7 bes:7 bes:7
		c:m7 f:7
		bes2:7}
		\alternative
		{{s2 f:7}{bes1:7}}
		bes:7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 264 
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
r8 f g f aes f a f
\repeat volta 2 {
	bes bes bes bes r bes, c bes
	des4. des8 r4 r8 f'~
	f es4 des8 bes f aes c
	bes4. bes8 r2
	es,4 es8 des es f es des
	bes4. bes8 r g'4-. f8
	des2. \glissando bes8 g'
	r f4-. des8 bes4-. r
	f'8 es des bes des d4 bes8
	es bes e f r2 \mark \markup {\musicglyph "scripts.coda" }
	\time 2/4 bes,4. bes8
}
\alternative {{\time 4/4 r8 f' g f aes f a f}{r2^"to solos" r_\markup { \center-column { "Solos in Bb/C/G (Ut);" "Disregard the form." } }}} \bar "||"
\break
bes,4. \coda
 bes8 r2
d4. d8 r2
f4. f8 r2
bes4. bes8 r2\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"