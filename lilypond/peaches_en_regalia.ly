% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Peaches en Regalia" 
 	composer = "Frank Zappa"
 	tagline = ""

}


accords = \chords {
	s1 
	\repeat volta 2 {\repeat percent 2 {b:m s2 fis4:m e}}
	\repeat volta 2 {b1:m a c2 d:m a fis4:m e}
	s1 s s s s s
	des2/f des des2/f des
	b/dis b b/dis b
	\repeat percent 4 {
	e gis:m fis:m b}
	c1:m7.5+.9+ % un accord
	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 103
	\set Staff.midiInstrument = "trumpet"
	\key a \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r1
\repeat volta 2 {\repeat percent 2 {
r4 <fis a d> <e gis cis> <d fis b>
<cis e a> <d fis b> <b d gis>2
}}
\repeat volta 2 {b'4~ b8 b16 b b8 cis d e cis4 a2.
d4 \tuplet 5/4 {d16 e d cis b} \tuplet 3/2{c8 b a} g d 
\mark \markup {\musicglyph "scripts.coda" }
e1}
<b' d fis>16-- <b d fis>8-^ <b d fis>16--~ <b d fis> <b d fis>-- <b d fis>8-^
r16 <b, d fis>-- <b d fis>8-^ <b d fis>4-^
<cis e gis>8 <e a cis>4 <a cis e> <b d fis> <cis e gis>8

<d f a>16-- <d f a>8-^ <d f a>16--~ <d f a> <d f a>-- <d f a>8-^
r16 <d, f a>-- <d f a>8-^ <d f a>4-^
<e g b>8 <g c e>4 <c e g> <d f a> <e g b>8

<f aes c>16-- <f aes c>8-^ <f aes c>16--~ <f aes c> <f aes c>-- <f aes c>8-^
r16 <f, aes c>-- <f aes c>8-^ <f aes c>4-^
<g bes d>8 <bes g f'>4 <es, bes' es> <f bes f'> <g es' g>8

<es' aes>16 <es aes> <es aes> <es aes> 
<es aes> <des ges> <des ges> <des f>
<des f> <b es> <b es> <bes des>
<bes des> <aes des> <aes des> <ges des'>

<f des'>8-\trill <des' f>-- <des f>-\trill <f, des'>--
<f des'>8-\trill <des' f>-- <des f>-\trill <f, des'>--

<gis b> <gis b>16 <gis b>~ <gis b> <b dis> <b dis>8
<b dis>16 <cis e>8 <cis e>16~ <cis e> <dis fis> <dis fis>8

\override Glissando.style = #'zigzag
<dis fis> <dis fis>16 <e gis> \glissando b4
b16 <fis a dis>8 <e gis cis>16~ <e gis cis> <e gis cis> <dis fis b>8

\key e \major
r8 cis'4 b8 gis4~ gis16 cis b gis
fis8 e fis8. e16 fis gis b8 r4
r16 cis b gis \tuplet 3/2 {fis gis fis} e8 r16 cis' b gis \tuplet 3/2 {fis gis fis} e fis
gis8 b16 gis~ gis b fis8 fis8. e16 fis8 e
r16 cis' b gis \tuplet 3/2 {fis gis fis} e cis e8 fis16 e fis8 e16 fis
gis e fis8~ fis fis16 fis fis e e e e cis cis cis
cis e cis8~ cis16 cis8 b16 cis e32 cis b16 cis b cis cis b
e8 e16 cis e cis e cis fis e8.~ e4

c4^\markup{Essai} cis c cis
\mark \markup {\musicglyph "scripts.coda" }
c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 c c c c c c c c
	}
}


theme = \staffViolon

\include "utils/books.ly"