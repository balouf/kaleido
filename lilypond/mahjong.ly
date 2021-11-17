% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Mahjong" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  \repeat volta 8 {f1:7sus4 es:6.9}
  \repeat volta 2 {
    f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9
    des:maj13 es:6.9 des:maj13 es:6.9 des:maj13 es:6.9 des:maj13 es:6.9
    d:7.9+ es2:m7 aes:7.9- des1:maj7 cis4.:m7 fis:7 s4
    f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9 f1:7sus4 es:6.9
  }
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 8 {<f, c'>4.^"Medium Afro/Latin" <f c'>8~ <f c'>4. f16 f <es bes'>4 <es bes'>2 es4}
\clef treble
\break
\repeat volta 2 {
  c''4 bes8 aes f es c bes es c g'4 f d-. d4. c8~ c2~ c1~ c1~ c1 r r
  \break
  c'4 bes8 aes f es c bes es c g'4 f d-. es bes8 c8~ c2~ c1~ c1~ c1 r r
  \break
  f4.^"Swing" aes8~ aes bes4 aes8
  \once \override BendAfter.extra-offset = #'(-2.9 . -1.2)   
  c4(-\bendAfter #2 es-.) 
  \once \override BendAfter.extra-offset = #'(-2.9 . -1.2)   
  c-\bendAfter #2 aes
  bes r8 es16 des bes8 aes es d fis4. dis8~ dis4 r
  \break
  c'4^"Afro/Latin" bes8 aes f es c bes es c g'4 f d-. d4. c8~ c2~ c1~ c1~ c1 r r
}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 164 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef bass
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"