% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Four Winds" 
 	composer = "Dave Holland"
 	tagline = ""

}


accords = \chords {
g2:maj7 a2:7
b2.:m7
e2.:7
b4.:m7 e:7
a2:5
b4.:7 fis4.:7
e2:7 fis4:7
d2:7 e4:7
c4.:maj7 f4.:maj7
d4.:maj7 fis4.:m7
b4:m7 g4:1 e4:7 d4:7
c4.:maj7 d4.:7
g2:maj7 a2:7
b2.:m7
e1:7
b2.:m7
e1:7
d1:5
}


sopran = \new Staff {
	\time 4/4
	\tempo 4 = 240 
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
d'4 \times 2/3 {b8 a g} e4 a8 fis8~
\time 3/4
4. b gis2 fis8 e
fis4. b \time 2/4 e4 r
\time 3/4
fis8(-> dis b) cis(-> ais fis)
gis2 b8 ais fis2 a8 gis
e4. a d cis8 b a 
\time 4/4
fis2 r4 e8(-> fis)
\time 3/4
g(-> fis g) a(-> g a)
}
\time 4/4
d4 \times 2/3 {b8 a g} e4 a8 fis8~
\time 3/4 \mark \markup { \musicglyph "scripts.coda" }
4. b
\time 4/4
gis1^"Open form solo"
\bar "|."

\break
\time 3/4 \mark \markup { \musicglyph "scripts.coda" }
fis4.\repeatTie b
\time 4/4
gis2 fis4 e fis1\fermata \bar "|."
	}
}

	
basse = \new Staff {
	\time 4/4
	\tempo 4 = 240 
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
g2 a4. b8~
\time 3/4
4. d, e2. d4. e
\time 2/4
a2
\break
\time 3/4
b4. fis e2 b'8 ais
d,2 a'8 gis c,4. f
\break
a a 
\time 4/4
d4 g, gis d
\time 3/4
e4. fis
}
\break
\time 4/4
g2 a4. b8~
\time 3/4 \mark \markup { \musicglyph "scripts.coda" }
4. d,
\time 4/4
e4 r r2
\bar "|."
\break
\time 3/4
b'4.\repeatTie d,
\time 4/4
e4 r r2 <d a'>1\fermata
\bar "|."
	}
}


theme = <<
\sopran
\basse
>>


\include "utils/books.ly"
