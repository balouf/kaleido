% Created on Mon Sep 20 15:23:38 CEST 2010

\version "2.22.0"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 




\header {

	title = "Arietas" 

 	composer = "Freddie Hubbard"

 	tagline = ""

}



accords_old = \chords {

%		\set chordNameExceptions = #chExceptions

		\partial 4. r4.

		bes2:maj7.5- as2:maj7.5- f1/ges

		e2:m7.5- a4.:7.5+ d8:m s2 r2

		bes2:maj7.5- as2:maj7.5- f1/ges

		e2:m7.5- a4.:7.5+ d8/es s1 s d/es s2. g4:m7

		R1*7 g1:m7

		\repeat volta 2 {

			c:9 s s s

			bes:9 s s s2.. d8:7.9+ s1

			s8 as4.:m7 des:7 d8:7.9+ s1

			es2:m7 as:7 d:m7 g:7
		}

		\alternative {
			{

				f:m7 bes:7 es1:maj7 c:m7.5-
			}
			{

				f2:m7 bes:7 as:m7 des:7 ges1:maj7 es:m6.9 c2:m7 f:7
			}
		}
}



staffViolon_old = \new Staff {

	\time 4/4

	\tempo 4 = 228

	\set Staff.midiInstrument = "violin"

	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary

	\relative c'' { 	

 % Type notes here 

\compressEmptyMeasures

\partial 4. f8 e d
r4 r8 c r4 r8 a
r4 r8 f~ f4 d-. g2 f4. d8~ d2

r8 f' e d
r4 r8 c r4 r8 a
r4 r8 f~ f4 d-. g2 f4. d8~ d2~
d8 d c d~ d2~ d8 d c d~ d2~ d8 d c d~ d2. r4

%\mark \markup{Am7}

R1*7

r2 r4 a'8 d~

\repeat volta 2 {
d2. c8 d~ d2. a4-. d2. \tuplet 3/2 {e8 d c}
d2 r4 g,8 c~ c2. bes4-. c2. g4-. c2. \tuplet 3/2 {d8 c bes} c2
r8 c bes a~ a4 f-. f8 g a c bes4 ges8 as bes4-.
	r8 \glissando a~a4 f-. f8 g a c
	bes4 ges8 as bes4-. c a2 b
}

\alternative {
{
	c2 d4. bes8~
	bes2 r8 g f es

	d es fis a c f es d-\bendAfter #0
}
{

	\override Glissando.style = #'zigzag
	c2 d2 es f4. \glissando des8~

	des2-\fermata-"Fine" des8 bes as ges bes1 r \bar "|."
}
}
	}
}


staffHarmonie_old = \new Staff {

	\time 4/4

	\tempo 4 = 228

	\set Staff.midiInstrument = "violin"

	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary

	\relative c''' { 	

 % Type notes here 

\compressEmptyMeasures

\partial 4. r4.

<<
	{r8 a r4 r8 g r4 r8 a4.~ a4 f-. d2 cis4. a8~ a2 r}\\

	{r8 e' r4 r8 d r4 r8 c4.~ c4 a-. bes2 a4. f8~ f2 r}

>>

<<

	{r8 a' r4 r8 g r4 r8 a4.~ a4 f-. d2 cis4. fis8~ fis1~ fis~ fis~ fis2. r4}\\
	{r8 e r4 r8 d r4 r8 c4.~ c4 a-. bes2 a4. a8~ a1~ a~ a~ a2. r4}

>>

R1*8

\repeat volta 2 {

	\repeat unfold 4 {

		<<

			{r8 a' r4 a-. r}\\
			{r8 e r4 e-. r}

		>>
	}

	\repeat unfold 3 {

		<<
			{r8 g r4 g-. r}\\
			{r8 d r4 d-. r}

		>>
	}

		<<
			{r8 g r4 g-. r8 f~ f1
			r8 ges r4 f-. r8 f~ f1
			ges2 ges f g
			}\\
			{r8 d r4 d-. r8 c~ c1
			r8 es r4 es-. r8 c~ c1
			des2 c f, g}

		>>
}

\alternative {
{

	<<

		{as' bes4. f8~ f2. r4 ges4-^ r r2}\\

		{as,2 bes4. g8~ g2. r4 bes-^ r r2}

	>>
}
{

	<<
		{

			\override Glissando.style = #'zigzag

			as'2 bes2 ces des4. \glissando as8~

			as2.-\fermata-"Fine" r4 f1 es2 es2
		}
		{
			as,2 bes2 ces des4. \glissando bes8~
			bes2. r4 ges1 bes2 a2
		}

	>>

	\bar "|."
}
}
	}
}


accords = \transpose bes c {\accords_old}

staffViolon = \transpose c d {\staffViolon_old}

staffHarmonie = \transpose bes c {\staffHarmonie_old}


theme=\staffViolon


\include "utils/books.ly"



theme=\staffHarmonie


\header {

	title = "Arietas (Harmony)" 
}


\bookOutputName "arietas_harmony"


\include "utils/books.ly"
