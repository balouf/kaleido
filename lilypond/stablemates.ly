% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Stablemates" 
 	composer = "Benny Golson"
 	tagline = ""

}


accords = \chords {
  \partial 2 s2
  e2:m7 a:7 es:m7 aes:7 des1:maj7 c:7.5+
  aes:m7 des:7 ges:maj7 g2:m7.5- c:7 f2..:m7 bes8:7.5+.9+ s1
  es1:m7 aes:7.5+ des:maj7 s
  
  f:m7 ges:13 g:7.5+ c:7
  b:7 bes:7 a2..:7 aes8:7 s1
  
  e2:m7 a:7 es:m7 aes:7 des1:maj7 c:7.5+
  aes:m7 des:7 ges:maj7 g2:m7.5- c:7 f2..:m7 bes8:7.5+.9+ s1
  es1:m7 aes:7.5+ des:maj7 s

  \repeat volta 2 {
  e2:m7 a:7 es:m7 aes:7 des1:maj7 c:7.5+
  aes:m7 des:7 ges:maj7 g2:m7.5- c:7 f2..:m7 bes8:7.5+.9+ s1
  es1:m7 aes:7.5+ des:maj7 s
  
  f:m7 ges:13 g:7.5+ c:7
  fis2:m7 b:7 f:m7 bes:7 e:m7 a:7 es:m7 aes:7
  
  e2:m7 a:7 es:m7 aes:7 des1:maj7 c:7.5+
  aes:m7 des:7 ges:maj7 g2:m7.5- c:7 f2..:m7 bes8:7.5+.9+ s1
  es1:m7 aes:7.5+ des:maj7 s
  }
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 162
	\set Staff.midiInstrument = "trumpet"
	\key des \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 2 \times 2/3 {r4^"swing" d f}
ges2. d8 f r es4. ces'4 des8 aes~ 
aes2. ces8 aes~ aes2. ces8 aes~
aes2~ \times 2/3 {aes4 g aes} bes2 aes4. des8~
des2 \times 2/3 {r4 bes b} c f,8 e~ e4 bes'8 aes~
aes1 r2 bes4-. ges8 f~
f2~^"latin" \times 2/3 {f4 d es} e2 c
<c es>1~ <c es>1
\bar "||" \break
aes'4.^"swing" c8 r aes r f aes4 aes2 aes4-.
es'4. b8 r g r b c2. aes4-.
b2.. aes8 r2 r4 aes-.
cis4. a8~ a4 cis8 c r2 \times 2/3 {r4 d, f}
\bar "||" \break
ges2. d8 f r es4. ces'4 des8 aes~ 
aes2. ces8 aes~ aes2. ces8 aes~
aes2~ \times 2/3 {aes4 g aes} bes2 aes4. des8~
des2 \times 2/3 {r4 bes b} c f,8 e~ e4 bes'8 aes~
aes1 r2 bes4-. ges8 f~
f2~^"latin" \times 2/3 {f4 d es} e2 c
<c es>1~ <c es>1^"fine."
\break
\repeat volta 2 {
s1^"all swing" s s s s s s s
s s s s s s
\bar "||" \break
s1 s s s s s s s
\bar "||" \break
s1 s s s s s s s
s s s s s s
}
}
}


theme = \staffViolon

\include "utils/books.ly"
