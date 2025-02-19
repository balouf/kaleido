% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Search For Peace" 
 	composer = "McCoy Tyner"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  a2:m7.5- d:8 f4:maj7/g g:9 f:maj7/g g:9
  a2:m7.5- d:8 f4:maj7/g g:9 f:maj7/g g:9
  g2:m7.11 c:7.9- f:m7 aes4:maj7/bes bes:7.9-
  es2:m7 ges4:maj7/aes aes:7.9- cis2:m7 e4:sus4.7/b
  \mark \markup { \musicglyph "scripts.coda" } e:7/b
  }
  c2:13 aes:13/c c2:13 aes:13/c c2:13 aes:13/c a:m7 d:7
  g:m9 aes:maj7/g g:m9 aes:maj7/g g:m9 aes:maj7/g f:maj7/g g:13
  a2:m7.5- d:8 f4:maj7/g g:9 f:maj7/g g:9
  a2:m7.5- d:8 f4:maj7/g g:9 f:maj7/g g:9
  g2:m7.11 c:7.9- f:m7 aes4:maj7/bes bes:7.9-
  es2:m7 ges4:maj7/aes aes:7.9- cis2:m7 e4:sus4.7/b e:7/b
  c1:13
  }

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 58
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
r4 \tuplet 3/2 {g'8 c d} es4. d8 g,2 g
r4 \tuplet 3/2 {g8 c d} es4. f8 g1
r4 \tuplet 3/2 {r8 bes, c} des4 e
c~ \tuplet 3/2 {c8 bes aes} g4 f
bes~ \tuplet 3/2 {bes8 aes ges} f4 es
gis4~ \tuplet 3/2 {gis8 fis e} e2
}
\break
e'4~ \tuplet 3/2 {e8 d c} c4~ \tuplet 3/2 {c8 d e}
e4~ \tuplet 3/2 {e8 d c} c2
e4~ \tuplet 3/2 {e8 d c} c4~ \tuplet 3/2 {c8 d e}
e4~ \tuplet 3/2 {e8 d c} c2

d4~ \tuplet 3/2 {d8 c bes} c4~ \tuplet 3/2 {c8 d f}
d4~ \tuplet 3/2 {d8 c bes} c2
d4~ \tuplet 3/2 {d8 c bes} c4~ \tuplet 3/2 {c8 d f}
g1 \bar "||"
\break
r4 \tuplet 3/2 {g,8 c d} es4. d8 g,2 g
r4 \tuplet 3/2 {g8 c d} es4. f8 g1
r4 \tuplet 3/2 {r8 bes, c} des4 e
c~ \tuplet 3/2 {c8 bes aes} g4 f
bes~ \tuplet 3/2 {bes8 aes ges} f4 es
gis4~_"After solos, DC -> Coda (no repeat)" \tuplet 3/2 {gis8 fis e} e2 \bar"|."
\break
\mark \markup { \musicglyph "scripts.coda" }
e1\fermata \bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"