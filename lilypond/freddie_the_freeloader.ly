% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Freddie The Freeloader" 
 	composer = "Miles Davis"
 	tagline = ""

}

voix = {\relative c' {
	\repeat volta 2 {
		<g' bes>4. <f aes>8~ <f aes>2~ <f aes>1 <g bes>4. <f aes>8~ <f aes>2~ <f aes>1 <c' es>4. <bes des>8~ <bes des>2~ <bes des>1 
		<g bes>4. <f aes>8~ <f aes>2~ <f aes>2. <aes ces>4-.
}
	\alternative {{<a c>2. <aes ces>8 <g bes>~ <g bes>2. <f aes>8 <ges a>~ <ges a>1~ <ges a>}{<a c>2. <aes ces>8 <g bes>~ <g bes>2. <f aes>4-. <g bes>4. <f aes>8~ <f aes>2~ <f aes>1}}}
}

accords = \chords {
	\repeat unfold 2 {
	\repeat volta 2 {bes1:7 s s s
	es:7 s bes:7 s}
	\alternative {{f:7 es:7 aes:7 s}{f:7 es:7 bes:7 s}} 
	}
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\voix
\bar "|."
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {s1 s s s \break s s s s \break
}
 \alternative {{s s s s \break }{s s s s}} \bar "|."
	}
}


\include "utils/books.ly"