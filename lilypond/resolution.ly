% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Resolution (part II)"
	subtitle = "Head: ABA; Solos: B; Tail: A; Bass => F pedal"
 	composer = "John Coltrane"
 	tagline =  ""

}


accordsu = \chords {
f1:m7 s s2 des1:sus7 s2
g1:8 s c:sus4.9- f2:m7 c:8
f1:m7 s s2 des1:sus7 s2
g1:8 s c:8 s
f1:m7 s s2 des1:sus7 s2
g1:8 s2 c:8 f:m7 c:8 f:m7 c:8
f1:m7 s s s s s s s \break
f1:m7 s s s s s s s
}

themeu = \new Staff {
	\time 2/2
	\tempo 4 = 160
	\set Staff.midiInstrument = "trumpet"
	\key f \minor
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\mark \default
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
\override Glissando.style = #'zigzag
\mark \default
f'1~2 c8 f es des c4. bes8 b2~2.r8 b
bes4. aes8 g2~8 aes g aes g f e c
aes' g aes aes f4 es8 f~1 \bar "||" \break
f'1~2 c8 f es des c4. bes8 b2~2.r8 b \break
bes4. aes8 g2~8 f e f e f e f e2
des8 <g g,> bes,4~1\bar "||" \break
f''1~2 c8 f es des c4. bes8 b2~2.r8 b \break
bes4. aes8 g4. f8 e g es2 c8 es
b4 <es es,>8 <f f,>~2~1\bar "|."\break
\mark \default
\repeat unfold 16 {s1}\fine
}
}

accords = \transpose c bes \accordsu
theme = \transpose c' bes \themeu

\include "utils/books.ly"
