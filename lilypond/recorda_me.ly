% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Recorda Me" 
 	composer = "Joe Henderson"
 	tagline = ""

}


accords = \chords {s1
	\repeat volta 2 {a:min6.9 s a:min6.9 s 
		c:min6.9 s c:min6.9 c2:min6.9 f:7.9-.11+
		bes1:maj7 bes2:min7 es:7 aes1:maj7 aes2:min7 des:7
		ges1:maj7 g2:min7 c:7
	}
	\alternative {{f2.:maj7 e4:7.9+ s1}{f2.:maj7 e4:7.9+ s1}}
		\repeat volta 2 {a:min6.9 s a:min6.9 s \break
		c:min6.9 s c:min6.9 c2:min6.9 f:7.9-.11+ \break
		bes1:maj7 bes2:min7 es:7 aes1:maj7 aes2:min7 des:7 \break
		ges1:maj7 g2:min7 c:7 f2.:maj7 e4:7.9+ s1
	}
	\repeat volta 4 {f2.:maj7 e4:7.9+ s1}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 184 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
r4 r8 e-. b'-.  c-. e,( c
\repeat volta 2
{fis2) r8 g-. a-. b-.
b4( a8 b-. ) r c-. e,( c
fis) g4-- a-- b8-. r b~(
b a) b( g) d'-. es-. g,( es
a2) \breathe r8 bes-. c-. d-.
d4( c8 d-.) r es-. g,( es
a) bes4-- c-- d-- d8-.
r4 r8 c d4-- c8( f,~~ f1)
r8 es( f) c'~ c4 bes8( g
es2~ es8) d( es bes'~
bes2) aes4-. \acciaccatura e8( f8)( des~ des2.) r4
r a'2 g4-.
\mark \markup {\musicglyph "scripts.coda" }
}
\alternative
{
	{c,4. c8-. r c-. g'4~-> g4. e8-. b'-. c-. e,( c)}
	{c4. c8-. r c-. <<{d4~-> d1}{g4~-> g1}>>}
}
% Solo
\break
\bar ".|:-||"
\repeat volta 2
{
	\repeat percent 2 {s1}
	\repeat percent 2 {s1}
	\repeat percent 2 {s1}
	\repeat unfold 7 {s1}
	s2.
	\repeat percent 4 {s4}
	\override NoteHead.style = #'cross
	b~ b1
	\revert NoteHead.style
}
\break
\mark \markup {\musicglyph "scripts.coda" }
\repeat volta 4
	{c,4.^\markup {Play 4 times} c8-. r c-. <<{d4~-> d1}{g4~-> g1}>>	}
	}
}


theme = \staffViolon

\include "utils/books.ly"