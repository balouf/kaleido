% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

%\paper { indent = 0\cm} 


\header {
	title = "Off A Bird" 
 	composer = "David Liebman"
 	tagline = ""

}



staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 200 
	\set Staff.instrumentName = "V1"
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
 R1*4
 \repeat volta 2 {
 a'8 g e f fis dis'4 c8
 cis4. b16 a g4 f8 fis->
 r1 \tuplet 3/2 {b4 a d,} e4. f16 gis
 c4. b8 ais d,-> r4 r1
 ais'8 gis cis, d dis16 e8.->~ e4
 f fis-> g gis-> a4. cis16 d g e-> r8 r4
 \time 2/4 r2
 \time 4/4
 g8 e c d dis c gis ais
 b gis e fis g ais fis' cis
 d dis-> r4 r r8 dis ( dis,-> ) r r4 r2
 }
	}

}
staffTrombone = \new Staff {
	\set Staff.instrumentName = "V2"
	\set Staff.midiInstrument = "trombone"
	\key bes \major
	\clef treble
	\relative c' { 	
 % Type notes here 
 \compressEmptyMeasures
R1*4
\repeat volta 2 {
a'2 d, g2.~ g8 c,-> r1
f2 ais, a~ a8 gis-> r4 r1
g'2 fis16 f8.->~ f4
e dis-> d cis->
c4. b8~ b16 e,-> r8 r4
\time 2/4 r2 \time 4/4
b''2 ais a2. gis4
g8 fis-> r4 r r8 ais ( dis,-> ) r r4 r2 
}
	}

}

accords = \chords {}

theme = {
  <<
    \staffViolon
    \staffTrombone
  >>
}


\include "utils/books.ly"