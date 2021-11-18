% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Zoom!" 
 	composer = "Toshiko Akiyashi"
 	tagline = ""

}


accords = \chords {
	g2:m d:7.9- g4:m aes2 c4:7 es1:7.9+ d:7.9+
	c2:m g:7.9- c4:m des2 g4 aes1:7.9+ s4 g4.:7.11+ c:7.9-
	s8 f2..:m s2 bes:7 bes2.:m7 es4:13 d1:7.13-.9-
	c1:maj7.3-.9 f2:m7 bes:9 bes:m9 es:13 s4. d2:7.13-.9- s8
	g2:m d:7.9- g4:m aes2 d4:7 es1:7.9+ d2:7.9+ g:7
	c2:m g:7.9- c4:m des2 g4:7 f1:m7 s4 g4.:7.9+ c:7
	f2:m f:m7 bes1:7.13 s4. es2:maj7 s8 d2:m7.5-.9- g:7.13-
	c1:maj7.3-.9 es:13 a2:m11 aes:7.11+ g:m
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = {\relative c'{
r8 d g bes fis a c es
d bes c aes es c a' d,
g d es f fis bes c f~
f4 \tuplet 3/2 {es8 bes ges} f d4 es8~
es g c es b d f aes
g es f des aes f d' g,
c g aes bes b es f bes~
bes4 \tuplet 3/2 {aes8 es ces} bes g4 aes8~
\bar "||"
aes r g'2 f4 e f g aes
bes r8 f~ f4. es8~ es d4 bes8 b d aes fis
g4 r8 d'~ d b c d es f g es d c4 c8~
c2 bes4. bes8 r4 r8 es d aes ges es
\bar "||"
r8 d g bes fis a c es
d bes c aes es c a' d,
g d es f fis bes c f~
f4 \tuplet 3/2 {es8 bes ges} f d4 es8~
es g c es b d f aes
g es f des aes f d' g,
c g aes bes b es f bes~
bes4 \tuplet 3/2 {aes8 es ces} bes g4 aes8~
\bar "||"
aes r g'2 f4 e f g aes
bes r8 f~ f d es e f fis g fis f e es b
d4 r8 d~ d b c d es f g c~ c4 bes8 d,~
d1
}}

basse = {\relative c'
{g2 a bes4 aes2 d4 es2.. d8~ d2 g,8 b4 c8~
c2 d es4 des2 g,4 aes2.. g8~ g2 c8 e4 f8~
f r es'2 d4 d des c d es r8 des~ des4. s8 s1
s s2.. des,8~ des2 des4. d8 s1
g,2 a bes4 aes2 d4 es2.. d8~ d2 g,8 b4 c8~
c2 d es4 des2 g,4 aes2.. g8~ g2 c8 e4 f8~
f r es'2 d4 d des c d es r8 d~ d4 s s1
s s r8 a, r r aes4. g8 
}}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
<<
	\voiceOne {\theme}
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	{\basse}}
>>
r1
\bar "|." 
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c
	}
}


theme = \staffViolon

\include "utils/books.ly"
