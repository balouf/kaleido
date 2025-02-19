% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Brown Skin Girl" 
 	composer = "Sonny Rollins"
 	tagline = ""

}


#(define ((my-stencils start) grob)
(let* ((par-list (parentheses-interface::calc-parenthesis-stencils grob))
(null-par (grob-interpret-markup grob (markup #:null))))
(if start
(list (car par-list) null-par)
(list null-par (cadr par-list)))))

startParenthesis = #(define-music-function (note) (ly:music?) 
"Add an opened parenthesis to the left of `note"
#{
\once \override Parentheses.stencils = #(my-stencils #t)
\parenthesize $note
#})

endParenthesis = #(define-music-function (note) (ly:music?)
"Add a closed parenthesis to the right of `note"
#{
\once \override Parentheses.stencils = #(my-stencils #f)
\parenthesize $note
#})



accords = \chords {
  \repeat volta 2 {d1 d a:7 d d d a:7 d
  d d:7 g gis:dim d/a b:7 e4.:m7 a:7 d4 s1}
  a:7 d a:7 d a:7 d a:7 d 
  \repeat volta 2 {d1 d a:7 d d d a:7 d
  d d:7 g gis:dim d/a b:7 e4.:m7 a:7 d4 s1}
  a:7 d a:7 d a:7 d a:7 d 
  d1 d a:7 d d d a:7 d
  d d:7 g gis:dim d/a b:7 e4.:m7 a:7 d4 s1  
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 216 
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
  d4. e8~ e4 fis4~ fis d g fis e4. cis8~ cis4 d r1
  fis4. g8~ g4 a4~ a fis b a g4. e8~ e4 fis r2 r4 fis
  fis4. g8~ g4 a~ a d2 cis4 b4. g8~ g4 b4~ b d cis b
  a4. fis8~ fis4 a~ a fis g fis e4. cis8~ cis4 d r2 r4 r8 \startParenthesis a'16 \endParenthesis a
} \break 
a4 a8 g~ g fis e4 d d r r8 a'16 a a4 a8 g~ g fis e4 d2 r4 r8 a'16 a
a4 a8 g~ g fis e4 d d r r8 a'16 a a4 a8 g~ g fis e4 d b cis d^"D.C." \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
\repeat volta 2 {s1 s s s s s s s \break s s s s s s s s} \break
s s s s s s s s \bar "||" \break
s s s s s s s s \break s s s s s s s s \bar "|."
	}
}


\include "utils/books.ly"
