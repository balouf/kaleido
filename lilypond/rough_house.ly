% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Rough House"
	subtitle = "Intro possible: A (free) -> B"
	composer = "John Scofield"
 	tagline =  ""

}


accords = \chords {
\repeat segno 2 {
g1:sus7 s s4 c1:m7 s2.
aes1:maj7.5+ s g:m7 e:m7 c:m s
es/b s b:13 s a:maj7.11+ s s s
a/gis b/g g/f fis:m7 c:maj7.11+ s s s
es4./d c/f des/ges e/dis s2 s1
e4./dis des/ges 
f:m7 s s2 g1:m7 es:m7 f:m7 
f:m7 g:m7 es:m7 e:m7
f:m7 g:m7 es:m7 f:m7
f:m7 g:m7 es:m7 e:m7
g1:sus7 s s4 c1:m7 s2.
\repeat volta 2 {c1:m7 s s s}
\repeat volta 2 {
f:m7 g:m7 es:m7 f:m7
f:m7 g:m7 es:m7 e:m7
}}
}

theme = \new Staff {
	\time 2/2
	\tempo 2 = 100
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\mark \default
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
\override Glissando.style = #'zigzag
\repeat segno 2 {
r8 d r c fis4. b8 r g r f r g4.
c,4-. g'2.~1  \break
r4^"Solo start" r8 b aes4 e-.
g8 aes4 g8~8 g, r d'~4. f8 d g, r8 b~
2 b16 c b8 a4 g4-. 2.~1
es'4 g8 es aes4 g8 es aes4 g8 es r bes4 dis8~
4 fis8 dis gis4 fis8 dis gis4 a8 gis r8 fis4 dis8~1~1 r
r8 e fis gis b gis a b cis4. 8 r e4 dis8~
2 cis8 b a4 b2 d4. cis8~\tuplet 3/2 {4 a b}
\tuplet 3/2 {a fis e} fis'1~1 r r \bar "||"
\break
\mark \default
g,4. e f4~8 gis4.~2~1 gis4. f4. aes4~2
4. bes8~2 4 4ges2 4. aes8~2 g8 aes bes4
c2 4. d8~2 4 4 bes2 4. b8~2. bes8 aes
g2 4. a8~2 4 4 f2 4. g8~8 e f g aes bes c4
d2 4. e8~2 4 4 c2 4. cis8~1^"D.C. solos" \bar "||" \break
\mark \default
r8 d, r c fis4. b8 r g r f r g4. es'4-^ c2.~1^"fine."
\repeat volta 2 {s^"Indef." s s s}
\repeat volta 2 {\repeat unfold 8 s1}
}
}
}

\include "utils/books.ly"
