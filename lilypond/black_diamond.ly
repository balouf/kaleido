% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Black Diamond" 
 	composer = "Roland Kirk"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
 d2.:m7 d:m7.5+ d:m6 d:m7.5+
 g:m7 c:7 f:maj7
  }
  \alternative {{a:7.5+}{b:7.5+}}
  \repeat volta 2 {
  e:7.5+ a:7.5+ d:7.5+ g:7.5+ 
  c:7.5+ ges:7 f:maj7}
  \alternative{{b:7.5+}{a2:7 es4:7}}
  \repeat volta 2 {
 d2.:m7 d:m7.5+ d:m6 d:m7.5+
 g:m7 c:7 f:maj7
  }
  \alternative {{a:7.5+}{b:7.5+}}
  \repeat volta 2 {
  e:7.5+ a:7.5+ d:7.5+ g:7.5+ 
  c:7.5+ ges:7 f:maj7}
  \alternative{{b:7.5+}{a2:7 es4:7}}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
  r4 d8. d16 f8. f16
  g aes g f d8. c16 d4-.
  r4 a'8. d16 gis, a gis g
  f8. d16 f4-- g-.
  \break
  e'8. d16 g4-. r8 f
  e16 d e8~ e4~ e8 d16 e a,2.
}
\alternative {
{r4 a8. g16 f8. e16}
{b'4 g'-. r8 fis}
}
\break 
\repeat volta 2 {
  bes,2. a4 f'-. r8 e aes,2.
  g4 es'-. r8 d
  \break
  fis,4 g a
  bes des-. r8 c c2.
}
\alternative {{b4 g'-. r8 fis}{r2.}}
\bar "|."
\break
\repeat volta 2 {s2. s s s \break  s s s}
\alternative {{s}{s}}
\break
\repeat volta 2 {s2. s s s \break  s s s}
\alternative {{s}{s}} \bar "|."
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