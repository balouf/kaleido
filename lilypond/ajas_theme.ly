% Created on Mon Sep 20 15:23:38 CEST 2010

\version "2.22.0"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 




\header {

	title = "Aja's Theme" 

 	composer = "Torrie Zito"

 	tagline = ""

}



accords = \chords {

		%\set chordNameExceptions = #chExceptions
		\partial 8 s8

		f1:maj7 e:m7 f2:maj7 b:7.5-

		c1:maj9 c2:m7 bes:dim7 bes1:maj9

		a2:sus13 a:13.9- d1:maj9

		g2:sus9 c:dim7/g

		c:maj7/g fis:9.11+

		f:maj7 b:7.5- e1:maj9

		bes2:sus9 es:dim7/bes es1:maj7/bes

		a2:m7.11 d:13 fis:m11 b:7.9-

		e:m7 b:sus7.9- e:m7 b:sus7.9- e:m7 f:maj7

		e4:m a2.:sus7.9-

		d2:m7 a:sus7.9- d2:m7 a:sus7.9-

		d2:m7 a:7.5+.9+ d:sus13 d:13

		g2:sus9 c:dim7/g

		c:maj7/g fis:9.11+

		f:maj7 b:7.5- e1:m9

		e2:m7.5- a:7.5+.9+ d:m9 f:m6/aes c:maj7/g f:maj7 es:maj7 des:maj7 c1:maj9 g2:m7 c:7
}


theme = \new Staff {

	\time 4/4

%	\tempo 4 = 92 

	\set Staff.midiInstrument = "violin"

	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	

 % Type notes here 

\compressEmptyMeasures

\partial 8 c8^"Freely"

a' b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}

b4~ \tuplet 3/2 {b8 a g} e4. c8

a' b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}
b1
g8 a a bes \tuplet 3/2 {bes4 c8_~} \tuplet 3/2 {c a g}

a4~ \tuplet 3/2 {a8 g f} d4~ \tuplet 3/2 {d8 f g}

a4. bes16 cis a4. g8
a1
a8 b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}

b4~ \tuplet 3/2 {b8 a g} e4. c8

a' b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}
b1
c8 d d es \tuplet 3/2 {es4 f8_~} \tuplet 3/2 {f d c}

d4~ \tuplet 3/2 {d8 c bes} g4~ \tuplet 3/2 {g8 bes c}

\tempo 4 = 56

d4~ \tuplet 3/2 {d8 es f} d4~ \tuplet 3/2 {d8 des c}
b2. \tuplet 3/2 {r8 b a}
g e e2 \tuplet 3/2 {r8 b' a}
\tuplet 3/2 {fis8 g e~} e2 \tuplet 3/2 {r8 b' a}
g e g a \tuplet 3/2 {b4 d8~} \tuplet 3/2 {d b a}
\tuplet 3/2 {fis8 g e~} e2 \tuplet 3/2 {r8 a g}
f d d2 \tuplet 3/2 {r8 a' g}
\tuplet 3/2 {e f d~} d2 \tuplet 3/2 {r8 a' g}
f d f g \tuplet 3/2 {a4 c8~} \tuplet 3/2 {c8 a c}
d1
a8 b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}

b4~ \tuplet 3/2 {b8 a g} e4. c8

a' b b c \tuplet 3/2 {c4 d8_~} \tuplet 3/2 {d b a}
b1
g8 a a bes \tuplet 3/2 {bes4 c8_~} \tuplet 3/2 {c a g}

a4~ \tuplet 3/2 {a8 g f} d4~ \tuplet 3/2 {d8 e f}

g2 c g c, g'1 r \bar"|."
	}
}


\include "utils/books.ly"

%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.21.0, 2.21.2, 2.22.0
%}
