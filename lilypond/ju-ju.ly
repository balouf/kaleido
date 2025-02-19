% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Ju-Ju" 
 	composer = "Wayne Shorter"
 	tagline = ""

}

startParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list (car par-list) point-stencil )))
}

endParenthesis = {
  \once \override Parentheses.stencils = #(lambda (grob)
        (let ((par-list (parentheses-interface::calc-parenthesis-stencils grob)))
          (list point-stencil (cadr par-list))))
} 


accords = \chords {
  \partial 4 s4
  \repeat volta 2 {
  b2.:7.5+ s s s\break
  b:7.5+ s s s\break
  bes:7.5+ s a:7 s\break
  aes:maj7 s e:m7 s\break
  f:maj7 s b:m7 s\break
  f:maj7 s b:7.9+ s\break
}
  \repeat volta 2 {
  b2.:7.5+ s s s
  b:7.5+ s s s\break
  bes:7.5+ s a:7 s
  aes:maj7 s e:m7 s\break
  f:maj7 s b:m7 s
  f:maj7 s b:7.9+ s
}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
\partial 4 b'8 a
\repeat volta 2 {
b4 a a8 g a4 g g8 dis g2.~ g2 b8 a
b4 a a8 g a4 g g8 dis g2.~ g
bes4 bes bes bes c d cis e8 g,~ g4~ g2.
g4 g g g aes c b d8 e,~ e4~ e2.
g2 g4 g e a d,2.~ d
g2 g4 g e a d,2.~ d2
\startParenthesis \parenthesize
  b'8 \endParenthesis \parenthesize a
}
\repeat volta 2 {\repeat unfold 24 {s2.}}
}


staffViolon = \new Staff {
	\time 3/4
	\tempo 2. = 60
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"
