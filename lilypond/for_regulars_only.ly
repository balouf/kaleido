% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"



#(define ((my-stencils start) grob) 
(let* ((par-list (parentheses-item::calc-parenthesis-stencils grob)) 
        (null-par (grob-interpret-markup grob (markup #:null)))) 
  (if start 
     (list (car par-list) null-par) 
     (list null-par (cadr par-list))))) 

startParenthesis = #(define-music-function (note) 
(ly:music?) 
"Add an opened parenthesis to the left of `note" 
#{ 
  \once \override ParenthesesItem.stencils = #(my-stencils #t) 
  \parenthesize $note 
#}) 

endParenthesis = #(define-music-function (note) (ly:music?) 
"Add a closed parenthesis to the right of `note" 
#{ 
  \once \override ParenthesesItem.stencils = #(my-stencils #f) 
  \parenthesize $note 
#}) 


\paper { indent = 0\cm} 

\header {
	title = "For Regulars Only" 
 	composer = "Dexter Gordon"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {es2:m7 e4.:m7 f:m7 s4 ges4.:m7 f:m7 s4
  e4.:m7 es8:m7}
  \alternative { {es2:m7 d4.:7 es8:m7 }
                 {es2:m7 d:7} }
  \repeat volta 2 {
    es:m7 d:13 des bes:7+
    es:m7 d:13 des bes:7+
    es:m7 d:13 f:m7 bes:7+
  es:m7 aes:7}
  \alternative {{des1}{des}}
  g:m7 s4. c2:7 s8
  ges1:m7 s2 b:7
  f1:m7 s2 bes:7
  e:m7 a:7 es:m7 aes:7

es:m7 d:13 des bes:7+
es:m7 d:13 des bes:7+
es:m7 d:13 f:m7 bes:7+
es:m7 aes:7 des1
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\mark "Intro"
\repeat volta 2 {
<aes' f>4 \tuplet 3/2 { <aes f>8 <aes f> <aes f> }
<a fis> <a fis> r <bes g>~ <bes g>4 <bes g> <ces aes> r8 <bes g>~
\break
<bes g>4 \tuplet 3/2 { <bes g>8 <bes g> <bes g> }
<a fis> <a fis> r <aes f>~
}
\alternative {
  {<aes f>4 <aes f> <aes fes> r8 <aes f>\laissezVibrer}
  {<aes f>4 <aes f> <aes fes>8 bes \tuplet 3/2 {aes fes! f}}
}
\break
\mark "Th."
\repeat volta 2 {
  aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <g es>~
  <g es>4. r8 r bes \tuplet 3/2 {aes e f}
  aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <es g,>~
  <es g,>4. r8 r bes \tuplet 3/2 {aes e f}
  aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <es ces>~
  <es ces> <d b> <des bes> <c a>~ <c a> <ces aes> <bes g>4
  \tuplet 3/2 {des8 es des} bes ges f4 d8 des~
}
\alternative {
  {des2 r8 bes' \tuplet 3/2 {aes e f}}
  {des2 r4 r8 g }
}
\bar "||"
\break
bes4 d8 c r g r a
bes4 d8 c~ c4 r8 aes
a4 des8 ces r ges r des
fes des d es r4 r8 g
aes4 c8 bes r f r g
aes4 c8 bes r4 r8 ges
g4 b8 a r8 e r f
ges4 bes8 aes r bes \tuplet 3/2{aes e f}
\bar "||"
\break
aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <g es>~
<g es>4. r8 r bes \tuplet 3/2 {aes e f}
aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <es g,>~
<es g,>4. r8 r bes \tuplet 3/2 {aes e f}
aes4 \tuplet 3/2 {aes8 aes aes} ces ces r <es ces>~
<es ces> <d b> <des bes> <c a>~ <c a> <ces aes> <bes g>4
\tuplet 3/2 {des8 es des} bes ges f4 d8 des~
des2 r
\bar "|."
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192
	\set Staff.midiInstrument = "trumpet"
	\key des \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"