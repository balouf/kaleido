% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Well You Needn't" 
 	composer = "Thelonius Monk"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2 {
		f1:6 ges:6
		f1:6 ges:6
		f1:6 ges:6
		f1:6
	}
	\alternative {{f1:6}{f1:6}}
	g:7 s aes:7 s
	a2:7 bes:7 b:7 bes:7 a:7 aes:7 g:7 ges:7.11+
	f1:6 ges:6
	f1:6 ges:6
	f1:6 ges:6
	f1:6 s
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
	\repeat volta 2 {
		f1:6 ges:6
		f1:6 ges:6
		f1:6 ges:6
		f1:6 f:6
	}
	g:7 g:7 aes:7 aes:7
	a2:7 bes:7 b:7 bes:7 a:7 aes:7 g:7 ges:7.11+
	f1:6 ges:6
	f1:6 ges:6
	f1:6 ges:6
	f1:6 f1:6
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 176 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 8 b8
\repeat volta 2 {
	c f a4-. c a8 f
	es' bes r4 r r8 b,
	c f a4-. c a8 f
	bes ges r4 r r8 b,8
	c f a4-. c a8 f
	es' bes r4 r r8 b,
	c f c4~ c8 b c f
}
\alternative {{c2. r8 b}{c2. r8 cis}}
\bar "||"
d g d4~ d8 cis d g d2. r8 d
es aes es4~ es8 d es aes es2. r8 es
e a e e f bes f f
fis b fis e f bes f dis
e a e d es aes es cis
d g des c r4 r8 b
\bar "||"
	c f a4-. c a8 f
	es' bes r4 r r8 b,
	c f a4-. c a8 f
	bes ges r4 r r8 b,8
	c f a4-. c a8 f
	es' bes r4 r r8 b,
	c f c4~ c8 b c f
c2. r4
\break
\repeat volta 2 {s1 s s s s s s s} \break
s s s s s s s s \bar "||" \break
s s s s s s s s \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
