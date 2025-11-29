% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Round Midnight" 
 	composer = "Thelonious Monk"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	es2:m c:m7.5- f:m7.5- bes:7 es:m7 aes:7 b4:m7 e:7 bes:m7 es:7
	aes2:m7 des:7 es:m7 aes:7}
	\alternative  {{b1:7 bes:7}{b2:7 bes:7 es1:m7}}
	c2:m7.5- f:7 bes1:7 c2:m7.5- f:7 bes1:7
	aes4:m7 des:7 ges2:maj7 ces:7 bes:7 es:7 des:7 ges4:m7 ces:7 bes2:7
	es2:m c:m7.5- f:m7.5- bes:7 es:m7 aes:7 b4:m7 e:7 bes:m7 es:7
	aes2:m7 des:7 es:m7 aes:7 ces:7 bes:7 es1:m}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 60 
	\set Staff.midiInstrument = "trumpet"
	\key ges \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
	r4 bes16 es f bes ges4. bes,8
	es4. d16 es bes'8 aes r4
	r es16 ges bes des c4. es,8
	a fis16 d gis4 aes8 f16 des g4
	r4 aes16 ces es ges f4. ces8
	bes4 \tuplet 3/2 {es,8 d des} c aes'4 es16 f
}
\alternative {
	{\tuplet 3/2 {fis8 fis fis} \tuplet 3/2 {fis f dis} f4. dis8
	d bes r4 r2}
	{fis'4 f8 dis f4 es8 d es2. es8 f}
}
ges4 f8 es f4. es8 d bes' r4 r es,8 f
ges4 f8 es f4. es8 d bes r4 r bes'4
ces4. ces8 bes4. bes8 aes4 ges f4. bes8
es8 es es4 des8 des des4 ces es,8 d bes' aes e d
\bar "||"
r4 bes16 es f bes ges4. bes,8
es4. d16 es bes'8 aes r4
r es16 ges bes des c4. es,8
a fis16 d gis4 aes8 f16 des g4
r4 aes16 ces es ges f4. ces8
bes4 \tuplet 3/2 {es,8 d des} c aes'4 es16 f
ges4 f8 es f4 es8 des es1
\bar "|."
	}
}


theme = \staffViolon

\include "utils/books.ly"