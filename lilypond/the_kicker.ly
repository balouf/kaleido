% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "The Kicker" 
 	composer = "Joe Henderson"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2 {\repeat percent 3 {bes1:13} bes2:13 e:m7 \break 
	es1:13 aes:13 \repeat percent 2 {des:maj7} \break 
	c:m7.5- f:7 bes:m7 f:7.5+}
	\repeat volta 2 {\repeat percent 3 {bes1:13} bes2:13 e:m7 \break 
	es1:13 aes:13 \repeat percent 2 {des:maj7} \break 
	c:m7.5- f:7 bes:m7 f:7.5+}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 8 f8
\repeat volta 2 {
c' bes r4 r f8 g aes f r4 c8 d es c d bes r4 c8 aes r4 r1
r8 ges' f ges c bes aes f ges4 f8 es~ es4 des8 es f bes, r4 r aes8 bes c f, r4 r2
r8 es'' es des es4 des8 es f bes, bes aes bes4 aes8 bes c f, r4 r r8 f \tuplet 3/2 {aes16 bes aes} f8 r4 r r8 \parenthesize f
}
 \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 }
\repeat volta 2 {\repeat percent 3 {s1} s s s \repeat percent 2 {s1} s s s s}
% c c c c c c c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
