% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Reflections" 
 	composer = "Thelonius Monk"
 	tagline = ""

}


accords = \chords {
  \repeat volta 3 {
aes4:maj7 ges:7 f:7 e:7.11+
bes2:m/es es4:7.9- a:7
aes2 bes4:m b:m
c2:m7 f:7.9-
g1:m7.5-
bes2:7/es a:7
  }
\alternative{
{aes2:maj6 a:dim
\times 2/3 {bes4:m7 b:dim f:7.5-.9+} bes8:m7 a4.:7}
{aes1 s2 c4:m7.5- f:7.5-.9-
bes2.:m7 s8 es:7.9- aes4. des2:7.5- s8
s c4.:7.5- des4:7.5- c:7+.9- f1:m f:m s4 bes2.:7.9-
bes2:m7 es:7.5.5- bes:m7 es:7/a
}
{aes2:maj7 ges:7  aes1:maj7}
}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 3 {
r8 es aes bes b c bes aes
f2 e
\times 2/3 {es4 f c} es2
\times 2/3 {r4 f c} \times 2/3 {es f c}
des r16 f c' des c4 bes
f2 g
}
\alternative {
{
  \times 2/3 {bes4 aes f} es4. f8
  \times 2/3 {aes4 f aes} aes8 f4.
}
{
  \times 2/3 {bes4 aes f} es4. f8
  es aes4. ges8 f a, f'
  r4 \times 2/3 {des8 es des} c'4~ \times 2/3 {c8 bes e,}
  es f es bes'~ bes2
  r8 c, d e g4 aes8 f~
<<
	\voiceOne {
	f2. }
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	r16 c d c es e8 c16 d c es e}
>>
\oneVoice
r4
r8 es f es bes'4 c g bes2.
\times 2/3 {f4 g f} <a bes>4 g f2 g
}
{\times 2/3 {bes4 aes g} \times 2/3 {bes aes g} aes2. r4}
}
\bar "|."
	}
}


theme = \staffViolon

\include "utils/books.ly"

