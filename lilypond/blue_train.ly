% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Blue Trane" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
	s1
	\repeat volta 2 {
	\repeat percent 4 {es:7.9+}
	\repeat percent 2 {aes:7.11+}
	\repeat percent 2 {es:7.9+}
	\repeat percent 2 {bes:7.9+}
	es:7.9+
	}
	\alternative {{s}{s}}
	\repeat percent 4 {es:7.9+}
	\repeat percent 2 {aes:7.11+}
	\repeat percent 2 {es:7.9+}
	\repeat percent 2 {bes:7.9+}
	\repeat percent 2 {es:7.9+}

	%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r4 r8 bes' des f des es~
\repeat volta 2 {
es1
r4 r8 bes des f des es~ es1
r4 r8 es, ges bes ges aes~ aes1
r4 r8 bes des f des es~ es1
r4 r8 bes des ges es des~ des1
r4 r8 bes des f des es~ es1
}
\alternative {{r4 r8 bes des f des es-\laissezVibrer}{s1}}
\bar "|."
\break
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat percent 4 {s}
 \break
 \repeat percent 2 {s}
 \repeat percent 2 {s}
 \break
 \repeat percent 2 {s}
 \repeat percent 2 {s}
\bar "|."
	}
}


\include "utils/books.ly"