% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "In Walked Bud" 
 	composer = "Thelonious Monk"
 	tagline = ""

}


accords = \chords {
		s1 s 
		\repeat volta 2 {f1:m f:maj7.3- f:m7 bes2:7 es:7
		aes:6 f:7 bes:m7 es:7 aes1:6}
		\alternative {{g2:m7.5- c:7}{aes1:6}}
		f:m7 s des:7 s
		f:m7 s des:7 s
		f1:m f:maj7.3- f:m7 bes2:7 es:7
		aes:6 f:7 bes:m7 es:7 aes1:6
		g2:m7.5- c:7
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "violin"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
f8^"Intro (opt)"  c'~ c2 f,4-.
e8 c'~ c4 r2
\repeat volta 2 {
	f,8^"Start" c'~ c2 f,4-.
	e8 c'~ c2 e,4-.
	es8 c'~ c2 es,4-.
	d8 bes'4. des,4. b8
	\override Parentheses.padding = #0.3
	\override Parentheses.font-size = #2
	c aes'~ aes2 b,8 <\parenthesize a>
	bes g'4. <des a> b8
	c es f <\parenthesize es> aes4 f8 es
}
\alternative {
	{r aes,4. r2}
	{r8 aes4. r2}
}
\break
f'8 g aes4 \tuplet 3/2 {bes8 ces bes} aes bes
aes4 \tuplet 3/2 {bes8 ces bes} aes bes aes <\parenthesize f>
<<{ces'1~ ces}\\
{d,4 \rest \stemDown ges-. f8 ces4. ges'4-. f8 ces~ ces2}>>
\stemNeutral
f8 g aes4 \tuplet 3/2 {bes8 ces bes} aes bes
aes4 \tuplet 3/2 {bes8 ces bes} aes bes aes <\parenthesize f>
<<{ces'1~ ces}\\
{d,4 \rest \stemDown ges-. f8 ces4. ges'4-. f8 ces~ ces2}>>
\stemNeutral
	f8 c'~ c2 f,4-.
	e8 c'~ c2 e,4-.
	es8 c'~ c2 es,4-.
	d8 bes'4. des,4. b8
	\override Parentheses.padding = #0.3
	\override Parentheses.font-size = #2
	c aes'~ aes2 b,8 \parenthesize a
	bes g'4. <des a> b8
	c es f \parenthesize es aes4 f8 es
	r aes,4. r2 \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


theme = \staffViolon

\include "utils/books.ly"


\header {
	title = "In Walked Bud (C)"
 	composer = "Thelonious Monk"
 	tagline = ""

}


\bookOutputName "In_Walked_bud_chant"


accords = {\transpose aes c' {\accords}}
theme = {\transpose aes c' {\staffViolon}}


\include "utils/books.ly"

