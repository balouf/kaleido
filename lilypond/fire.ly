\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Fire" 
 	composer = "Joe Henderson"
 	tagline = ""

}

accords = \chords {
	\repeat percent 24 {a1:m6.9} \break
	\repeat volta 2 {\repeat percent 2 {e:m11}}
	\repeat volta 2 {\repeat percent 2 {a:m6.9}}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 120
	\set Staff.instrumentName = ""
	\set Staff.midiInstrument = "violin"
	\key a \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c'' { 	
 % Type notes here 
\compressEmptyMeasures
r4 f8 e r d b4-.
r b8 a b a b4-.
r8 f' r e r d r b
r2 b4-. r
f'4. g16 f e4. f16 e
d4. e16 d b2~
b1~
b2 a4-^ b->~
b1~
b
r4 e8 a f4 d8 c
d c b' a f2~
f1
r8 e r a f f d b
c c e d f2
b8 a16 g f8 e16 d c4-. r
r2 b8 b r b
r b r b~ b a16 g f8 g16 a
b8 b r b r b r b
r1
r1
b8 b r b~ b a16 g f8 g16 a
b8 b r b r b r b
r1 %\bar"||" 
\break

\repeat volta 2 {\repeat percent 2 {s1}}
\repeat volta 2 {\repeat percent 2 {s1}}

}}


\include "utils/books.ly"