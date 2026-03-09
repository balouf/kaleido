% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "John McKee" 
 	composer = "Pat Metheny"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {c1:7sus4 s s s}
  \repeat volta 2 {
  c1:7 s s s s s s s
  a2:maj7 g:m7 f:m7 g:m7 c1:m7 s
  c1:7sus4 s s s s s s s
  }
}

theme = \new Staff {
	\time4/4
	\tempo "Moderately" 4=120 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
\repeat volta 2 {c,4. c'8-. r g bes4~2 g4-- bes-. 
                 c,4. c'8-. r g bes4~2 g4-- bes-. }
\clef treble \break
\repeat volta 2 {
bes'8 c c bes c c bes c e c c g bes4-- c-. r1 r \break
e4 d16 es d c d4 c8 d es-. bes bes g bes d c4-. r1 r \break
g'4 f16 ges f es f4 es8 f g c, c bes c es c4-. 
\clef bass c,,4. c'8-. r g bes4~2 g4-- c-. \break
c,4. c'8-. r g bes4~2 g4-- bes-. 
c,4. c'8-. r g bes4~2 g4-- bes-. \break
c,4. c'8-. r g bes4~2 g4-- bes-. 
c,4. c'8-. r g bes4~2 g4-- bes-.
}
%\fine
}
}
#(define raggedlast #f)
\include "utils/books.ly"
