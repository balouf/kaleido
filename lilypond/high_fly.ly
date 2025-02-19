% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "High Fly" 
 	composer = "Randy Weston"
 	tagline = ""

}


accords = \chords {
        \repeat volta 2 {
          d1:m g:7 c2:m7 f:7 e4:m7 a:7 d:m7 g:7
          c2:m7 ges:7 f1:7
        }
       \alternative {
         {bes1:7 b:7}
         {d1:m7.5- g:7.9+}      
       }
       c:m7.5- f:7.9- d:m g:7.9-
       c:m7.5- f:7.9- e2:m a:7 es:m aes:7
       d1:m g:7 c2:m7 f:7 e4:m7 a:7 d:m7 g:7
       c2:m7 ges:7 f1:7 bes:6.9 b:7
       
       \repeat volta 2 {
          d1:m g:7 c2:m7 f:7 e4:m7 a:7 d:m7 g:7
          des2:m7 ges:7 c:m7 f:7
        }
       \alternative {
         {bes1:7 b:7}
         {d1:m7.5- g:7.9+}      
       }
       c:m7.5- f:7.9- d:m g:7.9-
       c:m7.5- f:7.9- e2:m a:7 es:m aes:7
       d1:m g:7 c2:m7 f:7 e4:m7 a:7 d:m7 g:7
       des2:m7 ges:7 c:m7 f:7 bes1:6.9 b:7
}

voix = \relative c' { 	
 % Type notes here 
%\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
g'8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g4
g8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g4
\break 
g8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g f
}
\alternative {{g2. r8 f aes1} {g2. r8 f aes2. f'4}}
\bar "||" \break
es1 r2 \times 2/3 {d4 c bes} a1 aes2. f'4
es1 r2 \times 2/3 {d4 c bes} a2. r8 a aes1
\bar "||" \break
g8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g4
g8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g4
\break 
g8 g \tuplet 3/2 {d' g, g~} g2
r4 g8 g \tuplet 3/2 {d' g, g~} g f
g2. r8 f aes1
\bar "|." \break 
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
\repeat volta 2 {s1 s s s s s} \alternative {{s s}{s s}}
\bar "||" \break 
\repeat unfold 8 {s}
\bar "||" \break 
\repeat unfold 8 {s}
\bar "|."
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 156 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}


theme=\staffViolon

\include "utils/books.ly"