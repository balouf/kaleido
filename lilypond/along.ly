% Created on Mon Sep 20 15:23:38 CEST 2010

\version "2.20.0"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 




\header {

	title = "Along Came Betty" 

 	composer = "Benny Golson"

 	tagline = ""


}



accords = \chords {

	\repeat unfold 2 {

	bes1:m b2:m e:7 bes1:m b2:m e:7

	a1:maj7 aes:7 g:maj7 ges:7

	\break

	ges:m g2:m c:7 ges1:m g2:m c:7

	f1:maj7 a:7.9+ d:m g:7

	\break

	c:m f:7.9- a2:m7.5- d:7.9+ g:m g:m/f

	e1:m7.5- a:7.9+ f:m bes:7

	\break

	bes1:m b2:m e:7 bes1:m b2:m e:7

	c1:m7.5- f:7.9+ bes:m7.5- es:7.9+

	aes:maj7 b2:m e:7

	}

}


theme = \new Staff {

	\time 4/4

	\tempo 4 = 114

	\set Staff.midiInstrument = "violin"

	\key c \major
	\clef treble

	\accidentalStyle modern-cautionary

	\relative c' { 	

 % Type notes here 

\compressFullBarRests

r2 c'4-^bes8( des~) des1

r4 r8 c->~c( bes a bes des1)

r8 e,( fis gis b a gis fis aes1)

r8 d,( e fis a4 g8 ges~ ges1)

\bar "||"

r2 aes4-^ ges8( a)~ a1

r4 r8 aes~->( aes ges f ges

a2. c4 g4~ g8 f c' b bes f

\tuplet 3/2 {a4 bes g} a)~ a8 f16( e

d8 e f g a d cis d a1)

\bar"||"

d8( es d bes c2)

r8 es,( ges a c es d des

c2~ c8 d c a

bes) d,( g a bes d c b bes1)

r8 e,( g a c b bes a

aes4~ aes8 g~ \tuplet 3/2 {g4 bes aes}

f~ f8 c16 es d2)

\bar "||"

r2 c'4-^ bes8( des)~ des1

r4 r8 c->~ c( bes a bes des2. c4

es1~) es4~ es8( des) r c-. r f,(

e1 fis4~ fis8 e \tuplet 3/2 {fis4 e fis} es1) r \bar "|."

\pageBreak

\repeat unfold 34 {s1}  \bar "|."

	}

}


\include "utils/books.ly"