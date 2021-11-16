% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Killer Joe" 
 	composer = "Benny Golson"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	c1:7 bes:7 c1:7 bes:7 c1:7 bes:7 c1:7}
	\alternative {{bes:7}{bes:7}}
	e:m7.5- a:7.9- es:m aes:7 a:7 aes:7 e:m a:7 
	c1:7 bes:7 c1:7 bes:7 c1:7 bes:7 c1:7 bes:7
	\repeat volta 2 {
	c1:7 bes:7 c1:7 bes:7 c1:7 bes:7 c1:7 bes:7}
	e:m7.5- a:7.9- es:m aes:7 a:7 aes:7 e:m a:7 
	c1:7 bes:7 c1:7 bes:7 c1:7 bes:7 c1:7 bes:7
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 116 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {r2 f4-_ e8( g)~ g1~ g2 e4-_ c8( bes)~ bes1
r2 f'4-_ e8( g)~ g2. e8( g)~ g1~}
\alternative {{g1}{g2.-\repeatTie r4}}
\bar "||"
<<
	\override NoteHead.color = #red
	{bes1~\( bes2 c des1~ des2 es e1~ e2 c g1~ g2.\)}\\
	\override NoteHead.color = #black
	{g1~\( g2 a bes1~ bes2 c des1~ des2 es e1~ e2.\)}
>>
r4
\bar "||"
r2 f,4-_ e8( g)~ g1~ g2 e4-_ c8( bes)~ bes1
r2 f'4-_ e8( g)~ g2. e8( g)~ g1~ g2. r4 \bar "|."
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {s1 s s s s s s s}
 \break
s s s s s s s s
 \bar "||" 
\break  s s s s s s s s \bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"

