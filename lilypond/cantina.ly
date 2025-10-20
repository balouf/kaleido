% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Cantina Band" 
 	composer = "John Williams"
 	tagline =  ""

}


accords = \chords {
  d1:m d:m d2:m c:7 f1
  d:m d:m g:7 c:7 
  d1:m d:m g2:m7 c:7 f1
  bes2 b:m7.5- f/c d:7
  g:7 c:7 f1
  
  d:m d:m d:m d:m 
  d:m d:m d:m c:7
  d:m d:m d:m d:m
  bes2 b:m7.5- f/c d:7
  g:7 c:7 f1
  \repeat volta 2 {
  d1:m s s s s s
  \alternative {{s s}{s s}}
  }
}

theme = \new Staff {
	\time 2/2
	\tempo 2 = 132
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\mark \default
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
\override Glissando.style = #'zigzag
a'4-. d-. a-. d-. a8 d4-. a8~8 gis a4-.
8 gis a g r fis g fis f4. d8~2 \break
a'4-. d-. a-. d-. a8 d4-. a8~8 gis a4-.
g-. 4~8 fis g4-. c8 bes4 a8 r g4. \break
a4-. d-. a-. d-. a8 d4-. a8~8 gis a4-.
c-. c~8 a g4-.f4. d8~2 \break
2\glissando f\glissando a\glissando c\glissando
es4-. d-. gis,8 a4-. f8 r1 \bar "||"\break \mark \default
r8 a'4-. f8 a4-. r r8 a4-. f8 a4-. r
r8 a4-. f8 gis a r f~4. d8~2\break
r8 a'4-. f8 a4-. r r8 a4-. f8 a4-. r
r8 a4-. f8 gis a r g~4. c,8~2\break
r8 a'4-. f8 a4-. r r8 a4-. f8 a4-. r
r8 a4-. f8 gis a r f~4. d8~2\break
bes,8 d f4-. b,8 d f4-. gis8 a4-. d,8~2
8 f a d c a4-. f8~2 r \break \mark\default
\repeat volta 2 {
<d f>4. <f aes>8~8 <d f> <e g>4~
8 <d f> <f aes>4 <e g> <f aes>
<d f>4. <f aes>8~8 <d f> <e g>4~
8 <d f> <f aes>4 <e g> <f aes>\break 
<d f>4. <f aes>8~8 <d f> <e g>4~
8 <d f> <f aes>4 <e g> <f aes>
\alternative {
{<d f>4-> <f aes> <e g> <f aes>
<e g> <f aes> <e g> <f aes>
}
{r1^"Break; Solos on A*->B" r1 \bar "|."}}
}
}}

\include "utils/books.ly"
