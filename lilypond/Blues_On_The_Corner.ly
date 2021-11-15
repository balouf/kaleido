% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 



\header {
	title = "Blues on the Corner" 
 	composer = "McCoy Tyner"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	bes1:7 es:7
	bes2:7 bes4:7^3 aes:sus7
	fis:sus7 e:sus7 d2:sus7
	es1:7 s4 bes2.:7.5+.9+
	bes2:7 es:sus7 d:7.5-.9- g:7.5-.9-
	c1:m7 f:sus7 bes2:7 g:7.5+.9+
	c:7.5-.9- f:7.5-.9-
	c:7.5-.9- f4:7.5-.9- bes:7.11+
	s1 s4 s8 e8:7.9+ s2
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 118
	\set Staff.instrumentName = "V1"
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 f8
\repeat volta 2 {
	\tuplet 3/2 {cis' d f,} \tuplet 3/2 {cis' d f,} c'4-. r8 es,
	\tuplet 3/2 {bes' c es,} \tuplet 3/2 {bes' c es,} des' g,4 f8
	\tuplet 3/2 {cis' d f,} \tuplet 3/2 {cis' d f,} bes es~ \tuplet 3/2 {es aes, des}
	b fis~ \tuplet 3/2 {fis e a} g d4 g8
	\tuplet 3/2 {c des g,} \tuplet 3/2 {c des g,} \tuplet 3/2 {bes g es} bes'4~
	bes r \tuplet 3/2 {r8 f es} des bes
	\tuplet 3/2 {des es bes} des4 \tuplet 3/2 {r8 bes des} \tuplet 3/2 {es f aes}
	bes2. r8 bes
	\tuplet 3/2 {es16[ fes es} bes8] \tuplet 3/2 {des16 es des} aes8 bes4-. r8 f
	\tuplet 3/2 {bes16[ ces bes} f8] aes bes es,4 f-.
	bes-. \tuplet 3/2 {r8 aes f} bes4-. \tuplet 3/2 {r8 aes f}
	\mark \markup {\musicglyph "scripts.coda" }
	\tuplet 3/2 {a fis e} \tuplet 3/2 {b' a fis} cis'4.^\markup{Solo on Blues}  \parenthesize f,8
	}
	\break
	\mark \markup {\musicglyph "scripts.coda" }
	\tuplet 3/2 {a fis e} \tuplet 3/2 {b' a fis} cis'4. bes8->
	r1-\markup {drum fill} r4 r8 e,->~ e2\fermata \bar "|."
	}
}

staffEuph = \new Staff {
	\time 4/4
	\tempo 4 = 118
	\set Staff.instrumentName = "V2"
	\set Staff.midiInstrument = "trombone"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 d8
\repeat volta 2 {
	\tuplet 3/2 {a' bes d,} \tuplet 3/2 {a' bes d,} <<c4-. aes'-.>> r8 des,
	\tuplet 3/2 {g aes des,} \tuplet 3/2 {g aes des,} <<g des'>> <<g,4 des>> d8
	\tuplet 3/2 {a' bes d,} \tuplet 3/2 {a' bes d,} <<{bes bes~} {es es~} {aes aes~}>> \tuplet 3/2 {<<{aes ges ges} {es des des} {bes aes aes}>>}
	<<{e' e~ \tuplet 3/2 {e d d} c c4}
	{b8 b~ \tuplet 3/2 {b a a} g g4}
	{fis8 fis~ \tuplet 3/2 {fis e e} d d4}>> des'8
	\tuplet 3/2 {a' bes des,} \tuplet 3/2 {a' bes des,} \tuplet 3/2 {bes' g es} <<{es4~ es} {bes'4~ bes}>>
	    r \tuplet 3/2 {r8 <<f bes>> es,} <<des bes'>> bes,
	\tuplet 3/2 {des es bes} des4 r2
	r2. r8 f % Tacet becose guitare bes2. r8 bes
	\tuplet 3/2 {bes16[ ces bes} f8] \tuplet 3/2 {aes16 bes aes} es8 <<f4-. bes-.>> r8 bes
	\tuplet 3/2 {<<es16 aes[>> fes es} bes8] <<{aes' aes aes4 aes-.}{des,8 es aes,4 bes-.}>>
	bes-. \tuplet 3/2 {r8 aes f} bes4-. \tuplet 3/2 {r8 aes f}
	\mark \markup {\musicglyph "scripts.coda" }
	\tuplet 3/2 {fis e cis} \tuplet 3/2 {gis' fis e} <<fis 4. cis'4.^\markup{Solo on Blues}>>  \parenthesize d,8
	}
	\break
	\mark \markup {\musicglyph "scripts.coda" }
	\tuplet 3/2 {fis e cis} \tuplet 3/2 {gis' fis e} <<fis 4. cis'4.>> bes8->
	r1-\markup {drum fill} r4 r8 b->~ b2\fermata \bar "|."
	}
}


theme=\staffViolon


\include "utils/books.ly"



theme=\staffEuph


\header {
	title = "Blues on the Corner (harmony)" 
 	composer = "McCoy Tyner"
 	tagline = ""

}


\bookOutputName "Blues_on_The_Corner_harmony"


\include "utils/books.ly"