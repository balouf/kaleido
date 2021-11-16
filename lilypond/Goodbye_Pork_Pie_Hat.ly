% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Goodbye Pork Pie Hat" 
 	composer = "Charles Mingus"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  \repeat volta 2 {
    f2:7 des:7 ges:maj7 b:7 es:7 des:7 es:7 f:7
    bes:m7 des:7 g:m7 c:7 d:7 g:7 des:7 ges:maj7
    b:7 bes:7 c:7 es:7 f:7 des:7 ges:maj7 b:7
}
s1
\repeat volta 2 {
    f2:7 des:7 ges:maj7 b:7 es:7 des:7 es:7 f:7
    bes:m7 des:7 g:m7 c:7 d:7 g:7 des:7 ges:maj7
    b:7 bes:7 c:7 es:7 f:7 des:7 ges:maj7 b:7
}%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 8 c8
\repeat volta 2 {
f aes~ \tuplet 3/2 {aes f aes} bes aes4 f16 des
f8 aes4 f16 es f4. c8
f aes~ \tuplet 3/2 {aes f aes} ces bes4 f16 es
f8 aes4 f16 es f4. f8
c' es~ \tuplet 3/2 {es f, aes} bes aes4 f16 aes
c8 f~ \tuplet 3/2 {f f, bes} \tuplet 3/2 {es4 c8} \tuplet 3/2 {aes e des}
\tuplet 3/2 {aes'4 b f} \tuplet 3/2 {e b' g}
aes2 f4. ces'16 bes
aes2 f
bes8 aes f es ces' bes aes f
aes2 f
\tuplet 3/2 {c'4 bes aes} \tuplet 3/2 {f es c}
}
f1\fermata \bar "|."
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
\repeat volta 2 {
\repeat unfold 4 {s1} \break 
\repeat unfold 4 {s1} \break 
\repeat unfold 4 {s1}
}
% c c c c c c c c
}

staffViolon = \new Staff {
	\time 4/4
%	\tempo 4 = 92 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"