% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "On Green Dolphin Street (C)" 
 	composer = "B. Kaper & N. Washington"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {c1:maj7 c1:maj7 es:maj7 es:maj7
		d:maj7 des:maj7 c:maj7 c2:maj7 a:7.9-}
		\alternative {
			{d1:m g:7.9- c:maj7 c:maj7 f:m bes:7.9- es:maj7 d2:m g:7}
			{d:m d:m/c b:m7.5- e:7.9- a:m a:m/g fis:m7.5- b:7 e:m a:7.9+ d:m g:7.9+ c:maj7 a:7 d:m g:7}
		}
		\repeat volta 2 {c1:maj7 c1:maj7 es:maj7 es:maj7
		d:maj7 des:maj7 c:maj7 a:7.9-}
		\alternative {
			{d1:m g:7 c:maj7 c:maj7 f:m bes:7 es:maj7 d2:m g:7}
			{d1:m b2:m7.5- e:7.9+ a1:m fis2:m7.5- b:7 e:m a:7.9+ d:m g:7.9+ c:maj7 a:7 d:m g:7}
		}

}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
	c'2 c~ c \tuplet 3/2 {b4 g e} bes'1~ bes
	a2 a~ a \tuplet 3/2 {aes4 f des} \break g1~ g2. r4
\bar "||"
}
\alternative {
	{g2^\markup{Swing} d4 e f g aes bes g2 g~ g r4 g
	bes f2 g4 aes bes b cis bes2 bes~ bes4 r b2}
	{g2 d4 e f g gis e' }} d2 c c,4 d dis b'
	a2 g~ g4 g g g g1~ g2. r4
\break
\repeat volta 2 {s1 s s s s s s s \break}
\alternative {{s1 s s s s s s s \break}{s1 s s }} s \break s s s s
\bar "|."
	}
}



theme = \staffViolon


\include "utils/books.ly"

\header {
	title = "On Green Dolphin Street (Eb)" 
}

\bookOutputName "on_green_dolphin_street_Eb"


accords = {\transpose c es {\accords}}
theme = {\transpose c es {\staffViolon}}


\include "utils/books.ly"


