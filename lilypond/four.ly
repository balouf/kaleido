% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Four" 
 	composer = "Miles Davis"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
	\partial 4. s4.
	\repeat volta 2 {es1:maj7%\mark\markup{\fret-diagram "5-6;4-5;3-7;"}
 s2.. %\mark\markup{\fret-diagram "5-6;4-4;3-6;"} 
 s8 ees1:m7 aes:7
	f:min7 %\mark\markup{\fret-diagram "4-6;3-8;2-8;"}
s2.. %\mark\markup{\fret-diagram "4-6;3-5;2-7;"} 
s8 aes1:m7 des:7 
	g:min7 fis1:m7 f1:m7 bes:7
	}
	\alternative {{g:min7 fis1:m7 f1:m7 bes:7}{
	g2:m7 fis:m7 f:m7 bes:7 es1:maj7 s}}
	\repeat volta 2 {es1:maj7 s ees:m7 aes:7
	f:min7 s aes:m7 des:7
	g:min7 fis1:m7 f1:m7 bes:7
	}
	\alternative {{g:min7 fis1:m7 f1:m7 bes:7}{
	g2:m7 fis:m7 f:m7 bes:7 es1:maj7 s}}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\partial 4. bes8 c d-.
\repeat volta 2 {r bes c d-. r bes c d-.
r f es d-. r bes c des~ des1~
des2 r8 es f g-.
r8 es f g-. r8 es f g-.
r bes aes g r es f ges~ ges1~
ges4 r f8 g aes a
bes2 d,8 es g bes
b4 e,8 es~ es2
r8 c'4. bes4-^ aes8 g~ 
g2 f8 g aes a}
\alternative {{
	bes2 es,8 g4 bes8
	b4 e,8 es~ es2
	r8 c'4. bes4-^ aes8 g~
	g2 r8 bes, c d-.}{
		bes'4 g8 bes b e,4 c'8~
		c4 aes d8 bes4 es8-^
		r1 r
}}
%\bar "|."
\break
\repeat volta 2 { s1 s s s
	s s s s
	\bar"||" \break
	s s s s \break
}
\alternative {{s s s s \break }{s s s s}}
\bar"|."
	}
}


\include "utils/books.ly"