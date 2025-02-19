% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Central Park West"
 	composer = "John Coltrane"
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
  \partial 2 cis4:m7 fis:7
  b2:maj7 e4:m7 a:7 d2:maj bes4:m7 es:7
  aes2:maj7 g4:m7 c:7 f2:maj7 cis4:m7 fis:7
  b2:maj7 e4:m7 a:7 d2:maj7 cis4:m7 fis:7  
  b1:maj7 cis:m/b b1:maj7 cis2:m/b cis4:m7 fis:7

  b2:maj7 e4:m7 a:7 d2:maj bes4:m7 es:7
  aes2:maj7 g4:m7 c:7 f2:maj7 cis4:m7 fis:7
  b2:maj7 e4:m7 a:7 d2:maj7 cis4:m7 fis:7  
  b1:maj7 cis:m/b b1:maj7 cis2:m/b cis4:m7 fis:7


  \repeat volta 2 {
      b2:maj7 e4:m7 a:7 d2:maj bes4:m7 es:7
  aes2:maj7 g4:m7 c:7 f2:maj7 cis4:m7 fis:7
  b2:maj7 e4:m7 a:7 d2:maj7 cis4:m7 fis:7  
  b1:maj7 cis:m/b b1:maj7 cis2:m/b cis4:m7 fis:7
}
b1:maj7 cis:m/b b1:maj7 cis:m/b b1:maj7 cis:m/b b1:maj7 cis:m/b b1:maj7
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\override Glissando.style = #'zigzag
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
\partial 2 dis4 cis \bar "||"
\mark \default
fis1~ fis2 aes4 bes c c c c
a2 dis,4 cis fis1~ fis2 dis4. cis8
\break 

\once \override Score.RehearsalMark.break-visibility = #'#(#t #t #f)
\mark \markup { \musicglyph "scripts.coda" }
dis2 r4 r16 gis fis dis cis2.. b16 cis 
dis2 r4 r16 ais' fis dis cis2 dis4 cis
\break

\bar "||" \mark \default
fis4. fis8 d4 cis e2 aes4 bes 
c~ \tuplet 3/2 {c8 e, c'} c e, \tuplet 3/2 {e c' a~} \break 
a2 dis,4\glissando fis\glissando ais,4.  b16 dis fis4-. dis8 cis
a'4. fis16 a b,4 ais 
\break 
ais2 r4 \tuplet 3/2 {dis8 ais dis}
\tuplet 3/2 {ais gis4~} gis2~ gis8 dis' ais2 r4 r8 dis cis2
  \override Parentheses.font-size = #5
  \startParenthesis \parenthesize
  dis4 \endParenthesis \parenthesize cis \break
\repeat volta 2 {\mark \default s1 s s s s s s s s s_"After Solos, B -> DC -> Coda"}
\break
\mark \markup {\musicglyph "scripts.coda" }
dis4-. r r \tuplet 3/2 {r8 dis fis}
cis2.~ \tuplet 3/2 {cis8 cis fis}
fis dis~ dis2 \tuplet 3/2 {r8 dis fis}
\tuplet 3/2 {fis cis4~ } cis r \tuplet 3/2 {r8 cis fis}
dis2.~ \tuplet 3/2 {dis8 dis fis}
cis2 r4 \tuplet 3/2 {r8 cis fis}
dis2 r4 cis8 ais gis2.. fis'8 dis1\fermata \bar "|."

}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 72
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon


\include "utils/books.ly"
