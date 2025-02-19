% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Mo Joe" 
 	composer = "Joe Henderson"
 	tagline = ""

}


accords = \chords {
  ges2:maj7.5- s4. f8:m s1 ges2:maj7.5- s4. f8:m s1
  ges4.:maj7.5- f2:m es:6.9 des:maj7 bes8/c s2 aes4/bes bes/c s8 aes4/bes bes8/c s2
  aes4/bes bes4./c aes4/bes bes8/c s2 aes4/bes bes/c c1/des s1
  \repeat volta 2 {
  f2:m es:maj7.5- des4.:6.9 c2:7sus4 bes8:m7 s2. g4:m7.5- s1
  bes2:m7 es:7 aes4.:maj7 des2:maj7 g8:maj7.5- s2. d8:maj7 des:maj7.5- s1
  bes2:m7 es:7 aes4.:maj7 s4 des4.:maj7 s4 g:m7.5- c2:7.5+ d1:m7.5-
  bes4.:m7 a2:13 aes:maj7 d:13.11+ s8 s1}
  \alternative {{s1}{s1}}
  \repeat volta 2 {
  f1:m s bes:m7 s
  bes2:m7 es:7 aes:maj7 des:maj7 g1:maj7 des:maj7
  bes2:m7 es:7 aes:maj7 des:maj7 g:m7.5- c:7 d1:m7.5-
  bes2:m7 a:13 aes:maj7 d:7 g:m7.5- c:7 f1:m}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 260
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
r8 f aes bes r aes4-. bes8~ bes4 aes8 f r2
r8 f aes bes r aes4-. bes8~ bes4 aes8 f r2
r8 f aes ces bes f aes ces bes f aes ces bes4 aes8 f~ 
f2 es4-. f~ f8 es r f~ f2
es4-. f~ f8 es r f~ f2 es4-. f-. g1~^"fine." g2 r4 c,8\mf c
\break \mark \default
\repeat volta 2 {
f f r f g g r g aes4-. aes8 bes r bes c4-. r1 
r2 r4 c8 c des des r des bes bes r bes 
c4-. c8 aes r f b4~ b2. ges8 f~ f2. r8 c'
f2 es4. c8~ c4. es8 r des4. r4 c4-. bes4.-. f8
\grace {bes32 ces} bes8 aes f aes f4-. r8 c'
f4. fis8~ fis4. g8~ g4. aes8~ aes2~ aes1~
}
\alternative {{
  aes2 r4 c,,8 c }{
  aes''2\repeatTie r2
}}
\break \mark \default
\repeat volta 2 {
s1^"After solos, AA Intro" s s s \break
s s s s \break
s s s s \break 
s s s s
}
\pageBreak
r8^"harmony" <bes, c,> <bes es,> <c f,> r <bes es,>4-. <c f,>8~ <c f,>4 <bes es,>8 <g c,> r2
r8 <bes c,> <bes es,> <c f,> r <bes es,>4-. <c f,>8~ <c f,>4 <bes es,>8 <g c,> r2
r8 <bes c,> <bes es,> <des ges,> <c f,> <g c,> <bes es,> <des ges,> <c f,> <g c,> <bes es,> <des ges,> 
<c f,>4 <bes es,>8 <bes d,>~ 
<bes d,>2 <aes c,>4-. <bes d,>~ <bes d,>8 <aes c,> r <bes d,>~ <bes d,>2
<aes c,>4-. <bes d,>~ <bes d,>8 <aes c,> r <bes d,>~ <bes d,>2 <aes c,>4-. <bes d,>-. <c e,>1~^"fine." <c e,>2 r4 <f, g,>8\mf <f g,>
\break 
\repeat volta 2 {
<g c,> <g c,> r <g c,> <a d,> <a d,> r <a d,> <bes es,>4-. <bes es,>8 <c f,> r <c f,> <des g,>4-. r1 
r2 r4 <des g,>8 <des g,> <es aes,> <es aes,> r <es aes,> <c f,> <c f,> r <c f,>
<d g,>4-. <d g,>8 <bes es,> r <g c,> <des'ges,>4~ <des ges,>2. <aes des,>8 <g c,>~ <g c,>2. r8 <c g>
<des c>2 <des g,>4. <es g,>8~ <es g,>4. <es bes>8 r <es aes,>4. r4 <des g,>4-. <e aes,>4.-. f,8
\grace {bes32 ces} bes8 aes f es d4-. r8 aes'
<des c,>4. <des g,,>8~ <des g,,>4. <es es,>8~ <es es,> <f f,> <es ges,> <ges, b,>8~ <ges b,>2~ <ges b,>1~
}
\alternative {{
  <ges b,>2 r4 <f g,>8 <f g,> }{
  <ges b,>2\repeatTie r2
}}
\bar "||"
	}
}



\include "utils/books.ly"