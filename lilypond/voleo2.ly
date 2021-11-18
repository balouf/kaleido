% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Voleo" 
 	composer = "Magic Malik"
 	tagline = ""

}

startParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
        (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override ParenthesesItem.stencils = #(lambda (grob)
        (let ((par-list (parentheses-item::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
} 


accords = \chords {
  %\partial 4 s4
  \repeat volta 2 {
    a4..:m d2:7/fis s16 d4..:m/f e4.:7 s16
}
  \repeat volta 2 {
    a4..:m d2:7/fis s16 d4..:m/f e4.:7 s16
}
  \repeat unfold 8 {
    a4..:m d2:7/fis s16 d4..:m/f e4.:7 s16
}
  \repeat volta 2 {
    a4..:m d2:7/fis s16 d4..:m/f e4.:7 s16
}
  \repeat volta 2 {
    a4..:m g4 s16 f4. e2.
}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\set Score.markFormatter = #format-mark-box-alphabet
\set Timing.beamExceptions = #'()
%\partial 4 b'8 a
\repeat volta 2 {
  a'8 c r16 g8 fis16 r c' fis,8 c' fis, f c' r16 f,8 e16 r b'8 e,16 g8
}
\break
\repeat volta 2 {
  a4~ a16 c8 fis,16~ fis b8.~ b4 r8. f16 a b c8~ c16 b8. g8
}
\break
\time 15/8

r8 c a16[ d8.] c8 a16 e'~ e8.[ f16] e8[ c] a16[ e' f e] d[ c a ais] b8
c[ a16 d]~ d8[ c8] a16[ c] r8 c[ a16 f'] e[ c d8]~ d[ a8] c[ a16 e'~] e8 
c16[ d c a] g8[ c] a16[ d8.] c8[ a16 e']~ e8.[ f16] e8[ c] a16[ e' f e] d[ c]
a[ ais b8] c[ a16 d]~ d8[ c8] a16[ c] r8 c[ a16 f'] e[ c d8]~ d[ a8] c 
a16[ e'8.] c16[ d c a] g8[ c] a16[ d8.] c8[ a16 e']~ e8.[ f16] e8[ c] a16[ e']
f[ e d c] a[ ais b8] c[ a16 d~] d8[ c8] a16[ c] r8 c[ a16 f'] e[ c d8]~ d
a8[ c] a16[ e'8.] c16[ d c a] g8 a16c r d8 e16 r g8 a16 r c8[ d16] e8 f4 r r2 r r4 r8

\break
\repeat volta 2 {r4 r8. r16 r2 r4 r8. r16 r4. }
\break

\repeat volta 2 {c,8. c16 r8. b16~ b8 b r a8. a16 r8. gis16 r8. a16~ a8 b}
\bar "|."
}


staffViolon = \new Staff {
	\time 2,2,2,2,2,2,2,1 15/8
	\tempo 4 = 96
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme = \staffViolon

\include "utils/books.ly"
