% Created on Mon Sep 20 15:23:38 CEST 2010

\version "2.20.0"


#(set-global-staff-size 26)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 



\header {

	title = "Afro Blue" 

 	composer = "Mongo Santamaria"

 	tagline = ""


}



accords = \chords {
	

	\repeat unfold 16 {s2.} 

	\repeat percent 8 {f:m}

	R2.*16

	\repeat volta 2

	{

	\repeat percent 4 {f2.:m}

	\repeat percent 4 {f:m}

	\repeat percent 4 {bes:m}

	\repeat percent 4 {f:m}}

}


staffViolon = \new Staff {

	\time 3/4

	\tempo 4 = 184 

	\set Staff.midiInstrument = "violin"

	\key aes \major
	\clef treble

	\relative c' { 	

 % Type notes here 

\compressFullBarRests

	f4 c'4. aes8 bes2.

	aes4. bes f2 r8 c

	f4 c'4. aes8 bes2.

	aes4. bes f2. \bar "||"

	\break

	ees4 es g es2. des4. es f2.

	es4 es g es2. des4. aes' f2.

	\bar "||"

	\break

	\mark \markup {Solo}

	R2.*7 r4 r f8 aes

	\bar "||"

	\break

	c es-. r es4 des8 c4-. c-- bes8 g aes aes-. r g4 es8 f2

	f8 aes \break 

	c es-. r es4 des8 c4-. c-- bes8 g aes aes-. r g4 es8 f2.

	\bar "||"

	\break

	ees4 es g es2. des4. es f2.

	es4 es g es2. des4. aes' f2.

	\bar " ||"

	\break

\repeat volta 2

{\bar ".|:-||"

	\repeat percent 4 {s2.}

	\repeat percent 4 {s2.} \break

	\repeat percent 4 {s2.}

	\repeat percent 4 {s2.}

}

	}

}


theme = \staffViolon


\include "utils/books.ly"


\header {

	title = "Afro Blue (Cm)" 

 	composer = "Mongo Santamaria"

 	tagline = ""


}


\bookOutputName "afro_blue_chant"


accords = {\transpose aes es {\accords}}

theme = {\transpose aes es {\staffViolon}}


\include "utils/books.ly"



