% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Speak Low" 
 	composer = "Ogden Nash & Kurt Weill"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat unfold 2 {
	\repeat volta 2 {
	g1:m c:7 g1:m c:7 g1:m c:7 f2:maj7 \parenthesize a:m d1:7
	bes:m es:7 bes:m es:7 a2:m d:7 g:m c:7}
	\alternative {{f1:maj7 d:7.5+.9+}{f:maj7 s}}
	f:m s des:7.4+ s es:maj7 s des:7 c:7
	g1:m c:7 g1:m c:7 g2:m c:7 g2:m c:7 f2:maj7 \parenthesize a:m d1:7
	bes:m es:7 a:m d:7.9- g:7 g2:m c:7 f1:maj7 \parenthesize d:7.9+
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 4 c4
\repeat volta 2 {
	a'1~ a2 \tuplet 3/2 {g4 d g}
	a1~ a2 \tuplet 3/2 {g4 d g}
	a2 \tuplet 3/2 {g4 d g} a2. g4
	d'2. c4 d2. a4
	\bar "||"
	c1~ c2 \tuplet 3/2 {bes4 f bes}
	c1~ c4. bes16( c) \tuplet 3/2 {bes4 f g}
	a4. a8~ \tuplet 3/2 {a4 e f} g4. g8~ \tuplet 3/2 {g4 f e}
}
\alternative {{d2 d d2. c4}{f1~ f}}
\bar "||"
\tuplet 3/2 {es'4 d c} es2~ es aes,
g2. f4 f1
\tuplet 3/2 {d'4 c bes} d2~ d g,
f2. e4 e2. c4
\bar "||"
a'1~ a2 \tuplet 3/2 {g4 d g}
a1~ a4 r8 g \tuplet 3/2 {g4 d g}
a2 \tuplet 3/2 {g4 d g} a2. g4
d'2. c4 d2. a4
\bar "||"
c1~ c2 \tuplet 3/2 {bes4 f g}
a1~ a4 a bes c
d d d4. d8 d4 d d4. d8 d1 r
%\bar "|."
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
 \repeat volta 2 {\repeat unfold 8 {s1} \bar "||" \repeat unfold 6 {s1}}
 \alternative {{s s}{\repeat percent 2 {s}}}
 \bar "||"
\repeat percent 2 {s} \repeat percent 2 {s} \repeat percent 2 {s} s s 
\bar "||"
 \repeat unfold 8 {s}
\bar "||"
 \repeat unfold 8 {s}
 \bar "|."
	}
}


theme = \staffViolon

\include "utils/books.ly"
