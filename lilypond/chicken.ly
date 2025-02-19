% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 25)
#(set-default-paper-size "a4")
\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Chicken" 
 	composer = "Pee Wee Elis"
 	tagline = ""

}


accords = \chords {
	\repeat percent 4 {bes1:7}
	\repeat percent 4 {bes1:7}
\repeat percent 2 {ees1:7}
d:7 g:7 \repeat percent 3 {c1:7} }

theme = \new Staff {
	\time 4/4
	\tempo 4 = 112 
	\set Staff.midiInstrument = "trumpet"
	%\transposition ees
	\key bes \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here 
	%\bar ".|:" 
	r1 r r r2. r16 f bes8
	d r r4 r2
	r4 f,16 g bes d~ d8 bes16 g bes8 ees
	d r r4 r2
	r4 d8 r g f des c~
	c4 bes16 g bes8~ bes4. r8
	r2. bes'8 r
	r4 a8 a r4 a16 g f g~
	g2 r8. f16 g bes d bes~
	bes2  r8. f16 g bes d bes~
	bes2  r8. f16 g bes d bes~
	bes2 r
	bes16 aes r f r ees r des r bes aes r r8 bes' \bar "|." 
}
}


\include "utils/books.ly"