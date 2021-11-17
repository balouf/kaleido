% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Passion Dance" 
 	composer = "McCoy Tyner"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {f1:7sus4
		s s s s s s}
		\alternative {{s}{s}}
		bes s s s
		s s s s
		s s s s
		s s s2 c:7.11+ s1
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {r4 f'8 c a f bes es c1
r4 f8 c a f bes es c4. g'8~ g2
r4 f8 c a f bes es c1
r4 f8 c a f bes es
}
\alternative {{
	c 4. g'8~ g2}{
c, 4. g'8~ g4 es,}}
ges4.^"Pedal" aes8~ aes2~ aes r4
es ges bes8 aes~ aes2~ aes r4 es 
ges4. aes8~ aes2~ aes r4
es ges bes8 aes~ aes2~ aes r4
ges aes4. bes8~ bes2~ bes r4
ges aes des8 bes~ bes2~ bes r4
ges aes4. bes8~ bes2~ bes r4 ges aes r bes2~ bes1 \bar "|."

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


theme = \staffViolon

\include "utils/books.ly"