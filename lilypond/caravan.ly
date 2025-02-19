% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Caravan" 
 	composer = "Duke Ellington"
 	tagline = ""

}


accords = \chords {
		%\set chordNameExceptions = #chExceptions
		\repeat volta 2 {
		c1:7.9- s c1:7.9- s c1:7.9- s c1:7.9- s
		c1:7.9- s c1:7.9- s f:m s f:m s}
		f:7 s f:7 s bes:7 s bes:7 s 
		es:7 s es:7 s aes:7 s g:7.9+ s
		c1:7.9- s c1:7.9- s c1:7.9- s c1:7.9- s
		c1:7.9- s c1:7.9- s f:m s f:m s
		%\override ChordName.font-size=#-2 
		%f:7 s f:7 s bes:7 s bes:7 s 
		%es:7 s es:7 s aes:7 s g:7.9+ s
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 200 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
c'1~_"Latin" c~ c4 des c g bes c e g,
bes1~ bes~ bes4 c des c des c b e, \bar"||" \break
bes'1~ bes~ bes4 c b bes a aes ges e f1~ f~ f~ f2. r4
}
\break
f'1_"Swing" d2 c g1~ g2 f
c'1 g2 f c1~ c \bar "||"
\break
es' c2 bes f1~ f2 es4 f
aes1~ aes2 c g1~ g \bar "||"
\break
c1~_"Latin" c~ c4 des c g bes c e g,
bes1~ bes~ bes4 c des c des c b e, \bar"||"
\break
bes'1~ bes~ bes4 c b bes a aes ges e f1~ f~ f~ f2. r4
\bar"|."
\break
\set fontSize = #-3
f'1~^"Alternate bridge" f4 ges f c es1 des
f1~ f4 g f c es1 d
\bar"||"
es1~ es4 f es c bes1 f'2 e
es2. f,4~ f g aes bes c1~ c2 c
\bar"||"	}
}


\include "utils/books.ly"