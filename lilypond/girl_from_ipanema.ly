% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 29)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "The Girl From Ipanema" 
 	composer = "A.C. Jobim"
 	tagline = ""

}


accords = 
 \chords {
  \repeat volta 2 {
    f1:maj7 s g:7 s g:m7 ges:7 }
  \alternative {{f:maj7 ges:7}{f:maj7 s}}
  ges:maj7 s b:7 s fis:m7 s d:7 s
  g:m7 s es:7 s a:m7 d:7.9- g:m7 c:7.9-
  f1:maj7 s g:7 s g:m7 ges:7 f:maj7  ges:7
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
  g'4. e8 e d4 g8~ g4 e8 e4 e8 d g~
  g4 e e d8 g~ g g e e4 e8 d f~
  f d4 d d8 c e~ e c4 c c8 bes4
}
\alternative{{r4 c2.~ c1}{r4 c2.~ c2. r4}}
\bar "||"
f1~ \tuplet 3/2 {f4 ges f} \tuplet 3/2 {es f es}
des4. es8~ es2~ es2. r8 gis~
gis1~ \tuplet 3/2 {gis4 a gis} \tuplet 3/2 {fis gis fis}
e4. fis8~ fis2~ fis2. r8 a~
a1~ \tuplet 3/2 {a4 bes a} \tuplet 3/2 {g a g}
f4. g8~ g2~ g2 \tuplet 3/2 {r4 a bes}
\tuplet 3/2 {c c, d} \tuplet 3/2 {e f g} gis2. a4
\tuplet 3/2 {bes bes, c} \tuplet 3/2 {d e f} fis1
\bar "||"
g4. e8 e d4 g8~ g4 e8 e4 e8 d g~
g4 e e d8 g~ g g e e4 e8 d a'~
a4. f8 f f d c'~ c4. e,8 \tuplet 3/2 {e4 e d}
e1~  e4 r r2
\bar "|."

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"