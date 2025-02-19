% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Veils" 
 	composer = "Richie Beirach"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {es2.:m7.5- aes/e f:7.5+.9+ fis:m7+.11+ aes:sus4.7.9- f:7.9-/a es:m9.11}
  \alternative {{c:7.5+.9+ f:m9.11 e:7.5+.9+}{c:7.5+.9+ f:m9.11 s}}
  a:maj7/c cis:m9 a:maj7/c cis:m7+
  a:maj7.11+ f:maj7.11+/a a:maj7.11+ f:maj7.11+ fis:m7+.11+ gis:sus4.7.9-
  fis:m7.5-/cis s cis:m9.11
}

staffViolon = \new Staff {
	\time 3/4
	\tempo 4 = 144
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
\tuplet 4/3 2. {r4\mf aes' a des c es aes2~} aes2.~ aes
r2 \tuplet 3/2 {r8 a aes} 
ges4 f \tuplet 3/2 {r8 c des}
es2 \tuplet 3/2 {r8 des e,}
}
\alternative {
  {es'2 r8 des c2 \tuplet 3/2 {r8 bes aes} c2.}
  {es2 \tuplet 3/2 {c8 des aes'} g2.~ g2 \tuplet 3/2 {ges8\> f e\!}} 
}
\bar "||" \break
\tuplet 4/3 {gis,4\mp a cis c} dis2 r8 cis
\tuplet 4/3 {f,4 fis a cis} c2 r8 cis
dis2\cresc r8 cis b2 r8 e dis2 r8 cis\< b2 \tuplet 3/2 {a8 b a\f}
\tuplet 4/3 2. {gis4 f fis a cis c dis gis} 
fis2.~\> fis2 \tuplet 3/2 {r8 gis fis\!} e2.~ e
\bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"
