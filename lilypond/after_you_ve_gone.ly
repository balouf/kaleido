% Created on Sun Mar 14 14:57:14 CET 2010

\version "2.22.0"


#(set-global-staff-size 27)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 



\header {

	title = "After You'Ve Gone" 

 	composer = "Creamer & Lyton"

 	tagline = ""
}



accords = \chords {

\repeat volta 2 {f1:maj7 bes:7sus4 c:maj7 a:7 \bar "||"}

\alternative{

{d:7 g:7 c:maj7 c2 c:7 \break}

{d:min a:7.9+ d:min bes:7

c e:7.9+ a:min d:7sus4 \bar "||"
}}

c1 g:7 c g2:min c:7}


theme = \new Staff {

	\time 4/4

	\override Score.MetronomeMark.stencil = ##f

	\tempo 4 = 88 

	\set Staff.midiInstrument = "tenor sax"
	\transposition ees,,

	\key c \major
	\clef treble

	\relative c' {
		\accidentalStyle modern-cautionary

 % Type notes here 

	\bar ".|:" 

	\repeat volta 2 { a'8 c d e~ e2

	r8 d e d e d4.

	e,8 g a b~ b2

	r8 a b a b a4.}

		\alternative{

		{a8 e'4 e8~ e2

		a,8 d4 d8~ d2

		r8 g, a g b g a g

		c e,4 g8~ g2}

		{f'2 e

		d8 gis, a e'~ e4 d

		r8 dis e c d cis d b

		c dis, e b'~ b4 a}
	}

	g8 a c e~ e2

	r8 f, g b d4 e

	e8( c)~ c2. r1 \bar "|."
}
}

\include "utils/books.ly"
