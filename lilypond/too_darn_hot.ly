% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Too Darn Hot!" 
 	composer = "Cole Porter"
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
  \partial 4 s4
  \repeat volta 2 {
    f2:m c:m7 f:m s4 c:7
    f2:m c:m7 f:m s4 c:7
    f2:m aes f1:m g2:m7 c:m7 c1:7
    f:m s g2:m7 c:m7 c1:7
    f2:m7 f:7 c1:7 f2 f:7 c1:7
    f2 f:7 c1:7 f2:m7 c:m7
  }
  \alternative {{f2:m7 s4 c:7}{f1:m7}}
  \repeat volta 2 {
  f1 s4 c:aug f2 s1 s s s4 c:aug f2 s1
  c:7 f2 s4 f:7 bes f bes f:dim f bes f d:7 g2:7 c:7}
  \alternative {{
    f bes des:7 c:7 f1 s 
    f2:m c:m7 f1 f2:m c:m7 f1
    des:maj7 bes2. c4:7 f1 s2. c4:7
                }{
    f2 bes des:7 c:7 f bes des:7 c:7
    f bes des:7 s4 c:7 f1 s
    f2:m c:m7 f1 f2:m c:m7 f1
    des:maj7 bes2. c4:7 f1 f2:m f
  }}
  
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\set Score.markFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
\partial 4 c4
\repeat volta 2 {
f2 es c4 r r c f2 es c4 r r c
f g8 aes~ aes2~ aes8 aes4 f8 aes g f g~ g1~ g4 r r c,
f g8 aes~ aes2~ aes8 aes4 f8 aes g f g~ g1~ g4 r r c,
f g8 a~ a a4 f8 a g f g~ g r c,4
a' bes8 c~ c c4 a8 c bes a bes~ bes r g4
c d8 es~ es es4 c8 es d c d~ d c4 bes8 aes2 g }
\alternative { {f4 r r c} {f4 r r c'} }
\key f \major
\repeat volta 2 {
d c a d8 c~ c a d4 c d8 c d d c4 a g a2~ a8 d4 c8
d4 c a d8 c~ c a d4 c d8 c d d c4 a f g2. c,4
f f8 g a g f4 bes c d d8 e f f d4 c d g, r r f8 g
}
\alternative {{
  a4 a r f8 g aes4 aes r g f r c'4. cis8 d2 e
  f es c4 r r c f2 es c4 r r f,
  c'1 bes4( aes2.) f4 r r2 r r4 c'
              }
              {
  a r r f8 g aes4 r r f8 g a4 r r f8 g aes4 r r f8 g
  a4 r r f8 g aes aes4 aes8~ aes4 g f r c'4. cis8 d2 e
  f es c4 r r c f2 es c4 r r f,
  c'1 bes4( aes2.) f2 r r1
              }
}
\bar "|."

}


staffViolon = \new Staff {
	\time 2/2
	\tempo 2 = 72
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme = \staffViolon

\include "utils/books.ly"
