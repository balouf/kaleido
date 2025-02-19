% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 32)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Groovy Samba" 
 	composer = "Sergio Mendes"
 	tagline = ""

}


accords = \chords {
  \set Timing.measurePosition = #(ly:make-moment -5/8)
  s8 s2
  \repeat volta 2 {
    g1:m7 aes:7 g:m6 s a:m7.5- d:7.5+ g:m7
  
  }
  \alternative {{a2:m7.5- d:7.5+}{g1:m7}}
  c:m7 f:7 bes:maj7 s 
  cis:m7 fis:7 b:maj7 a2:m7.5- d:7.5+
  g1:m7 aes:7 g:m6 s a:m7.5- d:7.5+ g:m7 s
  }

theme = \new Staff {
	\time 2/2
	\tempo 2 = 84
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\set Timing.measurePosition = #(ly:make-moment -5/8)
d8 g g bes4
\repeat volta 2 {
  d1 r4 f16 fes es d c8 bes fis d e1 r4 r8 d g bes d g
  c,16 des c bes c2. r4 c16 des c bes c8 bes g f g1
  	}
	\alternative {{r4 r8 d8 g g bes4} {r2 r4 g,}}
	\bar "||" \break
	g'1 r8 f g a bes4 a8 g a1 r2 r4 fis,
	fis'1~ fis2 g4 fis es1 r4 r8 d8 g g bes4
	\bar "||" \break
  d1 r4 f16 fes es d c8 bes fis d e1 r4 r8 d g bes d g
  c,16 des c bes c2. r4 c16 des c bes c8 bes g f g1 r
	\bar "|."
	}
}

\include "utils/books.ly"