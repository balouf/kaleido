% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Oppornockity Tunes But Once" 
 	composer = "G. Bruce"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  f1:m9 s g:7 s
  bes:m7 des2:m7 es:m7
  f1:m b2:m7 e:7
  a1:maj7 d:m7 a:maj7 d2:m7 g:7
  a1:maj7 s
  bes:13 s a:13sus4 a:13
  bes:13 s a2:7 aes:7 g:7 ges:7
  }
  f1:m9 s g:7 s
  bes:m7 des2:m7 es:m7
  f1:m b2:m7 e:7
  a1:maj7 d:m7 a:maj7 d2:m7 g:7
  a1:maj7 s
  bes:13 s a:13sus4 a:13
  bes:13 s a2:7 aes:7 g:7 ges:7
  f1:m9 s g:7 s
  bes:m7 des2:m7 es:m7
  f1:m b2:m7 e:7
  a1:maj7 d:m7 a:maj7 d2:m7 g:7
  a1:maj7 s
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
f,4. g'16 aes g4. f16 es
d4. c16 bes aes4 g8 c~ 
c2 b~ b2. bes8 c
des c'~ c2 e,8 f
<ges bes> <fes aes> <ges bes> <fes aes>
<ces fes!>8. <ces fes>16 <des ges!>8. <des g>16
<f aes>2. r4
cis'8 b cis b r gis4. e2. r4
<c'e>8. <c e>16 \times 2/3 {<b d>8 <f a> <d f>} <c' e> <b d>4.
<ais, dis>8 <b e>4.~ <b e>4 <f c'>8 <fis cis'>
<ais dis> <b e> <dis! fis> <e g>
<g bes> <gis b> <a c> <b cis>
<ais dis> <b e>4.~ <b e>2~ <b e>1^"Fin"
\bar "||"
r2 g8 aes r g'r e4.~ e2
r4 fis8 cis r dis b cis
r fis, r4 \times 2/3 {dis16 e dis} b8 g4
r r8 aes' r4 g'8 e
r4 r8 c aes bes r4
<fis b>8 <b e>4. <bes es>8 <f bes!>4.
<e a>8 <a d>4. <es bes'>8 <aes es'>4.
}
\break
r1 r r r r r r \break  r r r r r r r
\bar "||" \break
r1 r r r r r r r
\bar "||" \break
r1 r r r r r r \break  r r r r r r r
\bar "|."
	}
}


theme = \staffViolon


\include "utils/books.ly"
