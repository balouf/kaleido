% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Limbo" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	es2:m7 ges:7sus4 c:11+ aes:maj9.11+
	bes:7sus4 bes:maj9.11+ aes:maj7 g:9+ g:m7
	ges:maj7 ges:7sus4 b8:5+ d4:5+ e8:5+ es4:m d:9-.13-
	des2:m7 a:7.5+ es:m7 aes:7.11+
	}
	\repeat volta 2 {
	es2:m7 ges:7sus4 c:11+ aes:maj9.11+
	bes:7sus4 bes:maj9.11+ aes:maj7 g:9+ g:m7
	ges:maj7 ges:7sus4 b8:5+ d4:5+ e8:5+ es4:m d:9-.13-
	des2:m7 a:7.5+ es:m7 aes:7.11+
	}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 92 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
r8 f~  \tuplet 3/2 {f aes des} ges2
r8 g~ \tuplet 3/2 {g e b} \tuplet 3/2 {bes d4~} d
\break 
r8 f,~ \tuplet 3/2 {f aes c} \tuplet 3/2 {d4 e fis}
r8 g~ \tuplet 3/2 {g d b} bes2
\time 2/4 r2 \time 4/4
\break
r8 f~  \tuplet 3/2 {f aes des} ges2
g8 bes~ \tuplet 3/2 {bes g d} \tuplet 3/2 {des4 e b}
\break 
es~ \tuplet 3/2 {es8 b gis} g b4. bes1
}
\break
\repeat volta 2 {s1 s
	\break s s \time 2/4 s2 
	\break \time 4/4 s1 s \break s s}
	}
}


\include "utils/books.ly"