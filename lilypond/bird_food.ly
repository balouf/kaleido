% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Bird Food" 
 	composer = "Ornette Coleman"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8 s1 s
  \repeat volta 2 {
  bes2:6 g:m7 c:m7 f:7.9- bes1:6 f2:m7 bes:7
  es1:6 s bes:6 d2:m7 g:7 c1:m7.5-}
  \alternative {{f2:7}{f:7 bes:6 s1}}
  d:7 s g:7 s c:7 s f:7 s
  bes2:6 g:m7 c:m7 f:7.9- bes1:6 f2:m7 bes:7
  es1:6 s bes:6 d2:m7 g:7 c1:m7.5-
  f2:7 bes:6 s1
  f2:7 bes:6 s2 s8 bes4.:6
  %\repeat volta 8 {f1:7sus4 es:6.9}
  %\repeat volta 2 {
   % f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9
   % des:maj13 es:6.9 des:maj13 es:6.9 des:maj13 es:6.9 des:maj13 es:6.9
   % d:7.9+ es2:m7 aes:7.9- des1:maj7 cis4.:m7 fis:7 s4
   % f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9
  %}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 8 c'8 \tuplet 3/2 {e f fis} g e f c a f bes4 a8 f r2
\repeat volta 2 {
f'4.-\repeatTie bes,8~ bes4 g'8 f 
es4 g,8 ges r d'4-.\repeatTie a8
bes4-. r8 ges' r ges f4-.
r8 ces4-. es8 d aes r ces
bes4 es,8 aes r2
es'4 es8 bes d4 f8 bes,~
bes4 e,8 f r4 r8 f
r c'4-. a8 f'4-. es8 f,
ges4 d'8 c~ c4 d,8 f
}
\alternative{
  {\time 2/4 a f g e}
  {\time 4/4 a f g e f bes,~ bes4 r1}
}
\bar "||" \break
r8^"Solo" d b d e4 fis8 d
g4. a8~ a g b4~-\repeatTie
b d8 d,~ d4 e8 c~ c2 r
r4 r8 e~ e4 g8 e 
bes' ces bes es,-\laissezVibrer r2 
r8 c'4.-\repeatTie b8 g es c
aes'4. g'8~-> g4-\laissezVibrer r^"End Solo"
\bar "||" \break
f4.-\repeatTie bes,8~ bes4 g'8 f 
es4 g,8 ges r d'4-.\repeatTie a8
bes4-. r8 ges' r ges f4-.
r8 ces4-. es8 d aes r ces
bes4 es,8 aes r2
es'4 es8 bes d4 f8 bes,~
bes4 e,8 f r4 r8 f
r c'4-. a8 f'4-. es8 f,
ges4 d'8 c~ c4 d,8 f
\mark \markup {\musicglyph "scripts.coda" }
a f g e f bes,~ bes4 r1_\markup { \center-column { "Solos in Bb (Ut);" "Disregard the form." } }
\bar "|." \break
\mark \markup {\musicglyph "scripts.coda" }
a'8 f g e f bes,4 f'8
\tuplet 3/2 {a bes b} c a bes bes, r4
\bar "|."
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 256 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"