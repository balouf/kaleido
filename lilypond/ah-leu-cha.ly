\version "2.22.0"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 




\header {

	title = "Ah-Leu-Cha" 

 	composer = "Charlie Parker"

 	tagline = ""

}



accords = \chords {

	\repeat volta 2 {

\repeat percent 6 {g1:m7}
}

\alternative {

{g2:m7 c:7
f1}

{g2:m7 c:7
f1}}

e:m7

a:7

\repeat percent 2 {d:7}

\repeat percent 2 {g:7}

g:m7

c:7

\repeat percent 6 {g:m7}

g2:m7 c:7
f1
}


theme = \new Staff {

	\time 4/4

	\set Staff.instrumentName = ""

	\set Staff.midiInstrument = "violin"

	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary

	\relative c'' { 	

 % Type notes here 

\compressEmptyMeasures

\repeat volta 2 {

	g8 bes a g c a g f

	bes a bes4~ bes8 a g f
	g bes a g c e d c

	g f g4~ g8 c c a

	bes f' e c g d' c a
	bes a bes2 \tuplet 3/2 {f8 g a}
}
\alternative {
{
	bes g a f e f g a
	c4 r8 a \tuplet 3/2 {bes8 c bes} a g
}
{
	bes g a f e f g a
c4 r r8 e, \tuplet 3/2 {g16 a g} f8}

}\bar"||"

	e4 b8 d cis4 r8 e
	g a bes g a fis e d

	a'4 c,8 d~ d4 r
	r1

	r4 g'8 ges16 f e4 r8 f~
	f \tuplet 3/2 {e16 d c} b4 r8 e cis d
	f \tuplet 3/2 {e16 d c} bes8 a g f \tuplet 3/2 {e g bes}

	des ees16 des c8 a bes16 c bes a g8 r \bar"||"
	g bes a g c a g f

	bes a bes4~ bes8 a g f
	g bes a g c e d c

	g f g4~ g8 c c a

	bes f' e c g d' c a
	bes a bes2 \tuplet 3/2 {f8 g a}
	bes g a f e f g a

	c4 r r2 \bar"|."
}}


\include "utils/books.ly"
