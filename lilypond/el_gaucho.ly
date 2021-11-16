% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "El Gaucho" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
	R1*8
	\repeat volta 2 {
	f1:maj7 es:maj7 d2:m bes:7 b:7 e:7.9+
	f1:m11 ges:maj7 f:m11 ges2:maj7 es:maj7
	\repeat percent 2 {es1:maj7}
	c:m d:m c:m d2:m e:m11
	\repeat percent 3 {e1:m11}
	}
	\alternative {{s}{s}}
	\repeat volta 2 {
	f1:maj7 es:maj7 d2:m bes:7 b:7 e:7.9+
	f1:m11 ges:maj7 f:m11 ges2:maj7 es:maj7
	\repeat percent 2 {es1:maj7}
	c:m d:m c:m d2:m e:m11
	\repeat percent 4 {e1:m11}
	}%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 184 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
R1*7
r2 r4 g'8 g
\repeat volta 2 {
	e( c e g~ g4)~ g8 g(
	f d f g~ g4.) f8(
	e c e f <c \parenthesize c'>2~ <c \parenthesize c'>2.) f8( aes
	bes4~ bes8) bes->~ bes4 f8 aes
	bes( aes f aes f4 f8 aes
	bes4~ bes8 bes~->) bes4 f8( aes
	bes aes f aes f2)~ f1~ f2. a8( c
	\bar "||"
	d4~ d8) d->~ d4 a8( c
	d c a c a4 a8 c
	d4.) d8->~ d4 a8( c
	d c a c) a2~
	a1~ a~ a~
}
\alternative{{a2. g8 g}{a1\repeatTie}}
\break
\repeat volta 2 {
s^"Solos" s s s\break
s s s s s s \bar "||" \break
s s s s s s s s}
	}
}

\include "utils/books.ly"