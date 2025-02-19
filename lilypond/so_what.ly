% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "So What" 
 	composer = "Miles Davis"
 	tagline = ""

}


accords = \chords {
	\partial 2.. s2..
	\repeat volta 2 {
	\repeat percent 7 {d1:m}
	}
	\alternative {{s}{s}}	
	\repeat percent 8 {es1:m}
	\repeat percent 8 {d1:m}
	\repeat percent 8 {d1:m}
	\repeat percent 8 {d1:m}
	\repeat percent 8 {es1:m}
	\repeat percent 8 {d1:m}
	%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

themeA = {d4-. r <a, d g b>4. <g c f a>8
r8 d' a' b c d e c
d8 a-. r4 <a, d g b>4. <g c f a>8
r8 d' a' b c d e c
d4-. r <a, d g b>4. <g c f a>8
r8 e''4. e4 e
d8 a-. r4 <a, d g b>4. <g c f a>8}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 164
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 2.. d8 a' b c d e c 
\repeat volta 2 {
\themeA
}
\alternative {
{r8 d' a' b c d e c}
{r8 es, bes' c des es f des}
}

\bar "||"
es4-. r <bes, es aes c>4. <aes des ges bes>8
r8 es' bes' c des es f des
es8 bes-. r4 <bes, es aes c>4. <aes des ges bes>8
r8 es' bes' c des es f des
es4-. r <bes, es aes c>4. <aes des ges bes>8
r8 f''4. f4 f
es8 bes-. r4 <bes, es aes c>4. <aes des ges bes>8
r8 d a' b c d e c
\bar "||"
\themeA
r1 \bar "|."
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
\repeat percent 8 {s} \bar "||" \break 
\repeat percent 8 {s} \bar "||" \break
\repeat percent 8 {s} \bar "||" \break
\repeat percent 8 {s} \bar "|."

 % c c c c c c c c
	}
}


theme = \staffViolon

\include "utils/books.ly"
