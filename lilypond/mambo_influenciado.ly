% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Mambo Influenciado" 
 	composer = "Chucho Valdés"
 	tagline =  ""

}


accords = \chords {
d1:m7 e2:m7.5- a:7.5- d1:m7 a2:m11 aes:7.5-
g:m7 g:m7/f e:m7.5- es:9 d:m7 s4 des:m7
c2:m7 f:7 bes1:maj7 e2:m7.5- bes:7
d1:m e4.:m7.5- a:7.5- s4
}

theme = \new Staff {
	\time 2/2
	\tempo 4 = 145
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
a'4.-> d8( e f) bes,4->~ 8 
e( f g) cis,4.-> a8
d( cis d e) f( e f g) a4->
\trio {g8( e c} fis es d c)
bes4 a'8->( g~4) r8 bes,
a4. gis8 a des a' g f4 e8( d~4) r8 g~4
\trio {es8 c bes} a c f es
d4 f8( d) c( bes) r bes'(->~ 8 a g f e)
g( e cis d4) r r2 r1\rythm{4. 8~2}
\fine
}
}

\include "utils/books.ly"
