% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Greensleeves" 
 	composer = "Traditional"
 	tagline = ""

}


accords = \chords {
\partial 8 s8
\repeat volta 2 {e2.:m d2 s16 dis8.:dim} \alternative {{e4.:m fis:7 b2.}{e4.:m b:7 e4:m a8:m e4.:m }}
\repeat volta 2 {g2. d2 s16 dis8.:dim} \alternative {{e4.:m fis:7 b s}{e:m b:7 e4:m a8:m e4.:m}} 
%c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
\repeat volta 2 {e2.:m d2 s16 dis8.:dim} \alternative {{e4.:m fis:7 b2.}{e4.:m b:7 e4:m a8:m e4.:m }}
\repeat volta 2 {g2. d2 s16 dis8.:dim} \alternative {{e4.:m fis:7 b s}{e:m b:7 e4:m a8:m e4.:m}} 
}

themeA = {
	\relative c' {\partial 8 e8
\repeat volta 2 {
g4 a8 b8. c16 b8
a4 fis8 d8. e16 fis8}
\alternative{{g4 e8 e8.( dis16) e8 fis4 dis8 b4 e8}
	{g8 fis e dis8. cis16 dis8 e4 e8 e4 r8}
	}}
}

themeB = {\relative c' {
	\repeat volta 2 {
		d'4. d8. c16 b8 a4 fis8 d8. e16 fis8
	}
	\alternative {{g4 e8 e8. dis16 e8 fis4 dis8 b4 r8}
		{g' fis e dis8. cis16 dis8 e4. e}
	} \bar "|."
}}

theme = \new Staff {
	\time 6/8
	\tempo 4. = 48 
	\set Staff.midiInstrument = "trumpet"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	 { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<<\themeA
\transpose c g \themeA
>>
\themeB
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat unfold 2 {\repeat volta 2 {s2. s} \alternative {{s s}{s s}}
	}
}
}

\include "utils/books.ly"