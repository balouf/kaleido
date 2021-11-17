% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Reincarnation Blues" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
b1:m aes:7.9+ e:7 des:7
e:9 b:m7 es:m7 aes:7
g:m7 c:7.9+ e:m7.5- a:7.5-.9+
d:m bes:7 g:7.5-
  }
\alternative {{s}{s}}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<<
	\voiceOne {
	  \repeat volta 2 {
	fis'2. \times 2/3 {g8 fis d}
	b1~  b2.. aes8 b2 r
	\break
	fis'2~ fis8 a~ \times 2/3 {a fis d}
	b2. \times 2/3 {b8 b bes~}
	bes2.. aes8 bes,1
	\break
	c'2. \times 2/3 {bes8 a g}
	es'2. \times 2/3 {des8 c bes}
	a2. \times 2/3 {g8 fis e}
	es2.. e8
	\break
	a2. \times 2/3 {bes8 a f}
	d'2. \times 2/3 {bes8 d d~}
	d1~
	  }
        \alternative {{d4. b8 r2}{d1\repeatTie}}
	}
	\new Voice {
	\override NoteHead #'color = #red
	\voiceTwo
	\repeat volta 2 {
	r2 r4 r8 fis,~
	fis2. \times 2/3 {g8 fis d}
	b2. \times 2/3 {gis8 b b~}
	b2. \times 2/3 {gis8 b b~}
	b2.. fis'8~ fis2. \times 2/3 {gis8 fis cis}
	bes2. \times 2/3 {bes'8 ges es} f,1
	d'2. \times 2/3 {d8 c bes}
	e2. \times 2/3 {e8 d a}
	g2. \times 2/3 {e'8 d cis}
	g2.. cis8
	d2. \times 2/3 {e8 d bes}
	f'2. \times 2/3 {d8 f f~}
        f1~}
	\alternative {{f4. d8 r2}{f1\repeatTie}}

	}
>>
\bar "|."
	}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c

}


theme = \staffViolon

\include "utils/books.ly"