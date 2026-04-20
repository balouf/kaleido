% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "A Morte De Um Deus Do Sal"
	subtitle = "Boucle ABC"
 	composer = "Roberto Menescal"
 	tagline = ""

}

accords = \chords {
  \repeat volta 2 {g2.:m7 c:9 g:m7 c:9}
  g:maj7 c:9 g:maj7 c:9
  \repeat volta 2 {
    b:m7 bes:13  a:m11 aes:13
    b:m7 e:7.9- a:m7 d:7.9-
  }
  d:m7 g:7 c:maj7 s cis:m7 fis:7.9+ b4.:m7 e:7.9+ a:m7 d:7.9-
    b2.:m7 bes:13  a:m11 aes:13
    b:m7 e:7.9- a:m7 d:7.9-
}

theme = \new Staff {
	\time3/4
	\tempo  4=144 
	\set Staff.midiInstrument = "trumpet"
	\key g \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c'' { 	
 % Type notes here 
\override Score.RehearsalMark.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
\compressEmptyMeasures
\mark \default
\repeat volta 2 {
g4. 8 a g c4. 8 d c g4 bes'8 g f d c4 8 d c bes
}
\break
\key g \major
g2.~g~g~g \break
\mark \default
\repeat volta 2 {r4. d'8 e d g4. f8 d c d4 es d f2.\break
b,4 c b cis c b b c b bes2.}
\break \mark \default
g'4 4 4 4 a g g e2~2. \break
fis4 4 4 a4. g8 d ais fis'2 g4 e4. es \break
r4. d8 e d g4. f8 d c d4 es d f4. es8 bes g\break
b4 c b cis c b b c b bes2.
\fine
	}
}
#(define raggedlast #f)
\include "utils/books.ly"
