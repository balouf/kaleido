% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Conference of the Birds" 
 	composer = "Dave Holland"
 	tagline = ""

}


accords = \chords {
s1 s4 s1 s4
\repeat volta 4 { s1 s4 s1 s4}
\break
\repeat volta 2 {
d2.:m f2 bes2. es2
d2.:m f2 bes2. es2

d2.:m f2 bes2. es2
d4.:m c g2/b \break
}
\alternative {{s1 s4 s2}{s1 s4 s2}}
}


sopran = \new Staff {
	\time 5/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
s1^"Bass solo (Dm aeolian)" s4 s1 s4
\repeat volta 4 {r1 r4 r1 r4}
\repeat volta 2 {
  d'4. a a8 bes a4 
  d4. f es8 d bes4
  d4. a a8 bes a4
  d4. f es8 d bes4
  d4. a a8 bes a4
  d4. f es8 d bes4
  f4. e' d2~
}
\alternative{ 
  {1~ 4~ \time 2/4 4 r4 } 
  {d1~\repeatTie^"Fine" 4~ \time 2/4 2}}
\bar "|."	
	}
}



flute = \new Staff {
	\time 5/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
s1 s4 s1 s4
\repeat volta 4 {r1 r4 r1 r4}
\repeat volta 2 {
  a'4. d c2 f4 es8 d c4 bes d
  a4. d c2 f4 es8 d c4 bes d
  a4. d c2 f4 es8 d c4 bes d
  a4. d a'2~
}
\alternative{ {
              1~ 4~ \time 2/4 4 r4 } {a1\repeatTie~ 4~ \time 2/4 2}}
\bar "|."	}
}


	
basse = \new Staff {
	\time 5/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
s1 s4 r2.^"Slide into" <d, a'>2
\repeat volta 4 {
4. 4. <c f>4 4
<f bes>4. 4 r8 <bes, es>4 4
}
\repeat volta 2 {
<d a'>4. 4. <f c'>4 c'8 f,
bes4. f8 c' d es4 bes8 es
d,4. a'4 d,8 f4 g8 a
bes4. f8 g f es4 bes'8 es,
d4. a'4 d,8 f4 g8 a
bes4. 8 f4 es bes'8 es,
d4. c b2~
}
\alternative {
{1 b8 c \time 2/4 d e f g}
{b,2\repeatTie^"Fine" b8 c d4 d8 e \time 2/4 f4 f8 a }}
\bar "|."
	}
}


theme = <<
\sopran
\flute
\basse
>>


\include "utils/books.ly"
