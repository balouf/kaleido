% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "As You Like It" 
 	composer = "A. L."
 	tagline = ""

}


accordsBb = \chords {
\set chordChanges = ##t
\partial 4
s4 s1
\repeat volta 2 {
d1:m11 s1 c4:6 s2. d1:m
f:maj7 b:m7 d:min9 g4:7.11+ r2.
c2:maj7 b:13 c2:maj7 b:13 c2:maj7 b:13 c2:maj7 b:13
c2:maj7 b:13 a:m fis:m b2.:7.13- s4 g1:7
c2:maj7 b:13 e:9 a:maj7 c2:maj7 e:9 b:13 e:9
g4:7.11+ r2. a1:m a:7
}
%a:7
\alternative {{d:6}{d:6}}
b2:m e:m7 e1:m7
}

accords = \transpose c' bes \accordsBb

staffSaxophoneTenor = \new Staff {
	\time 4/4
	\override Score.MetronomeMark.stencil = ##f
	\set Staff.instrumentName = ""
	\set Staff.midiInstrument = "tenor sax"
	\transposition c,
	\key c \major
	\tempo 4 = 200 
	\clef treble
	\relative c'' {
		\accidentalStyle modern-cautionary
 % Type notes here
 \partial 4
 r8 g\mark"w/ bass"\bar"|" a e' g a r4 r8 g
 \repeat volta 2 {
 <c, g>1 <d a> <c a>4 r2 r8 g
 a e' g a r4 r8 g8
 <c, a>1 <d b> <e c>
 g8 cis, r2 r8 d \bar"||"
 \tuplet 3/2 {e8 g a} b4 a8 b gis4
 b4 a8 b fis4 dis
 \tuplet 3/2 {e8 g a} b4 a8 b gis4
 b4 a8 b fis4 a
 e8 g a b a b gis b
 e, g a b a b gis fis
 dis4 e8 g~g4
 r8 g,\mark"w/ bass" a e' g a r4 r8 g8\bar"||"
 e8 g a b <gis fis>2 <fis e> <e cis>
 \tuplet 3/2 {e8 g a} b4 <fis e>2 <gis fis> e
 g8 cis, r2 g4
 a e' g a8 g
 	<cis, a>1
}
\alternative {{<d b>2. r8 g}{<d b>1}}\bar ":|."
%<d b>2. r8 g \bar "||"
 	\break
\mark\markup{\musicglyph"scripts.coda"} <d b>2 <e a>~ <e a>1 \bar"|."
	
}}

theme = \transpose c' bes \staffSaxophoneTenor

\include "utils/books.ly"