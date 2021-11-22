% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Night Dreamer" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  e2.:m7 g:m7 d:7.5+
  \repeat volta 2 {
    s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7
  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7}

  \repeat volta 2 {
  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7
  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7

  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7
  es2.:m7 aes:m7
  
  e:sus4.7 s f:sus4.7 s

  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7
  s8 g4.:maj7 bes4:7 s8 es4.:maj7 d4:7
  }
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r2.^\markup{Intro Rub. Piano} r r \break
\repeat volta 2 {r r r r} \break 
\repeat volta 2 {
  b'4( c d)-. d( c bes)-.
  a8 bes16 a g8 bes4.~ bes2.
  \break
  b4( c d)-. d( c bes)-.
  aes8 bes16 aes ges8 bes4.~ bes2.
  \break 
  b4 e4. cis8~ cis4. b4 gis16 fis
  f4 bes4. g8~ g4. f4 d16 c'
  \break 
  b4 c d~ d2 c8. bes16 a8 bes16 a16 g8 bes4.~ bes2.
  
}
\bar "|."
}


staffViolon = \new Staff {
	\time 3/4
	\tempo 2. = 52
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"