% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Sweet Pea" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat unfold 2
	{
	bes1:maj7 aes:m7+ bes:7.5+.5- c:7.9-.9+.5-/aes c:7.9-.9+.5-/aes
	bes:maj7 aes:m es:maj7.4+ aes:maj7.6- ges:maj7/aes
	aes:maj7.6- aes2:maj7.5-.5+ g:dim es:m9/f e:maj7.5- aes1:13/es s2. es4:m9
	bes1:maj7 aes:m7+ ges:7.4+/aes ges:7.4+/aes ges:7.4+/aes
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxième
}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 83 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 4 bes'4 a~ \tuplet 3/2 {a8 f d} es4~ \tuplet 3/2 {es8 d bes}
b1 bes~ bes~ bes2. r8 bes'
a4~ \tuplet 3/2 {a8 f d} es4~ \tuplet 3/2 {es8 d bes}
b'4~ \tuplet 3/2 {b8 bes f} aes4~ \tuplet 3/2 {aes8 des, ges}
e1 es r r2 r4 es'
e~ \tuplet 3/2 {e8 es bes} des4. bes16 aes
bes2~ bes8 es4. aes,1 r2 r4 r8 bes
a4 f8 d es4 d8 bes b1 bes r r 
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
\repeat unfold 4 {s1 s s s s \break } \bar "|."
 % c c c c c c c c
	}
}


theme = \staffViolon

\include "utils/books.ly"
