% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Have You Met Miss Jones" 
 	composer = "Rodgers & Hart"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {
		f1:maj7 d:7.9- g:m c:7
		a:m d:m}
		\alternative {{g:m c:7}{c:m f:7}}
		bes:maj7 aes2:m des:7 ges1:maj7 e2:m a:7
		d1:maj7 aes2:m des:7 ges1:maj7 g2:m c:7
		f1:maj7 d:7.9- g:m c:7
		a2:m d:7 g:m c:7 f1:maj7 g2:m c:7
		\repeat volta 2 {
		f1:maj7 d:7.9- g:m c:7
		a:m d:m}
		\alternative {{g:m c:7}{c:m f:7}}
		bes:maj7 aes2:m des:7 ges1:maj7 e2:m a:7
		d1:maj7 aes2:m des:7 ges1:maj7 g2:m c:7
		f1:maj7 d:7.9- g:m c:7
		a2:m d:7 g:m c:7 f1:maj7 g2:m c:7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2
{
	a'4. d,8 c d4 c8~ c1
	r8 d4 e8 f g4 a8~ a bes4 c8~ c2
	d4. g,8 f g4 f8~ f2. a4 
}
\alternative {
	{bes1~ bes}
	{c1 r8 d4. d4 d}
}
c4. bes8 f g4 aes8~ aes aes4. aes4 aes
aes4. ges8 des es4 e8~ e e4. e4 e
e8 d4. fis8 a4. des2 des4. bes8~ bes1~ bes
\bar"||"
a4. d,8 c d4 c8~ c1
r8 d4 e8 f g4 a8~ a bes4 c d e8~ e1~
e8 d4. a4 g8 f~ f1~ f4^"Turn Over" r r2
\break
\repeat volta 2 {s1 s s s s s}
\alternative {{s s}{s s}}
\break 
s s s s s s s s
\break 
s s s s s s s s \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"


\header {
	title = "Have You Met Miss Jones (Bb)" 
 	composer = "Rodgers & Hart"
 	tagline = ""

}


\bookOutputName "HaveYouMetMissJonesChant"


accords = {\transpose f bes {\accords}}
theme = {\transpose f bes {\staffViolon}}


\include "utils/books.ly"


