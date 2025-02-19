% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Infant Eyes" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
\partial 2 s2
g1:m f:m es:maj7 a:7.9-.13
ges:maj7 c:m/f es:m f:m/bes bes:7.5+.9+

es:maj7 e:maj7.4+/es es:maj7.4+ e:maj7 b:maj7
f:m/bes aes:m bes:m/es d:7.5+.9+

g1:m f:m es:maj7 a:7.9-.13
ges:maj7 c:m/f es:m f:m/bes s

g1:m f:m es:maj7 a:7.9-.13
ges:maj7 c:m/f es:m f:m/bes bes:7.5+.9+ \break

es:maj7 e:maj7.4+/es es:maj7.4+ e:maj7 b:maj7
f:m/bes aes:m bes:m/es d:7.5+.9+

g1:m f:m es:maj7 a:7.9-.13
ges:maj7 c:m/f es:m f:m/bes s
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 56 
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 2 c2 \bar "||"
f~ f8 d f g aes2. g4 f2~ f8 d c bes bes'2. f4
aes2~ aes8 bes, es aes f2. bes,4
des2~ des8 es, ges des' bes1~ bes 2. ges'8 aes \bar "||"

bes2~ bes8 g f es cis'2.~ cis8 ais a2~ a8 g f c
dis'2. ais4 cis2~ cis8 dis, gis cis bes2. es,4
ges2~ ges8 aes, ces ges' es1~ es2. c4 \bar "||"

f2~ f8 d f g aes2. g4 f2~ f8 d c bes bes'2. f4
aes2~ aes8 bes, es aes f2. bes,4
\mark \markup {\musicglyph "scripts.coda" }
des2~ des8 bes es des bes1~ bes 2. r4 \bar "|."
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
% Solo
\break
\repeat unfold 9 {s1} \bar "||"
\break
\repeat unfold 9 {s1} \bar "||"
\break
\repeat unfold 9 {s1} \bar "|."
\break
\mark \markup {\musicglyph "scripts.coda" }
des2~ des8 bes es des bes1-\fermata \bar "|."	
}
}


theme = \staffViolon

\include "utils/books.ly"


\header {
	title = "Infant Eyes (D)" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


\bookOutputName "infant_eyes_chant"

accords = {\transpose bes d' {\accords}}
theme = {\transpose bes d' {\staffViolon}}


\include "utils/books.ly"


