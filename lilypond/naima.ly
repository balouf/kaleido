% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Naima" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
	bes1:m/es es:m
	b2:13.11+/es a:13.11+/es aes1:maj7/es
	\break
	bes1:m/es es:m
	b2:13.11+/es a:13.11+/es aes1:maj7/es
	\break
	b:maj7/bes bes:13.11+.9- b:maj7/bes bes:13.11+.9-
	e:9.11+/bes b:maj7/bes f:m/bes ges:13.11+/bes
	\break
	bes1:m/es es:m
	b2:13.11+/es a:13.11+/es aes1:maj7/es

	\repeat volta 2 { bes1:m/es es:m b2:13.11+/es a:13.11+/es aes1:maj7/es}
	b:maj7/bes bes:13.11+.9- b:maj7/bes bes:13.11+.9-
	e:9.11+/bes b:maj7/bes f:m/bes ges:13.11+/bes
	bes1:m/es es:m
	b2:13.11+/es a:13.11+/es aes1:maj7/es
	
	b2:13.11+/es a:13.11+/es aes1:maj7/es
	b2:13.11+/es a:13.11+/es aes2:maj7 des:maj7
	aes:maj7 des:maj7 aes:maj7 des:maj7 aes1:maj7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 55 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
c'2.~ \tuplet 3/2 { c8 bes es} f,2. r4
aes2 ges4~ \tuplet 3/2 { ges8 es ges} es2. r4
c'2.~ \tuplet 3/2 { c8 bes es} f,2. r4
aes2 ges4~ \tuplet 3/2 { ges8 es ges} es2. r4
\bar"||"
bes'2.~ \tuplet 3/2 { bes8 bes bes} g2. \tuplet 3/2 { r8 es f}
bes2.~ \tuplet 3/2 { bes8 bes bes} g2. \tuplet 3/2 { r8 f es}
des'2.~ \tuplet 3/2 { des8 bes des} bes2. \tuplet 3/2 { r8 fis bes}
g2.~ \tuplet 3/2 { g8 es g} es2. r4
\bar"||"
c'2.~ \tuplet 3/2 { c8 bes es} f,2. r4
aes2 ges4~ \tuplet 3/2 { ges8 es ges} es2. r4 
\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
\bar ".|:-||"\mark \markup {\musicglyph "scripts.coda" }
\break
\repeat volta 2 {s1^"Solo" s s s} \break
s s s s \break s s s s \break \bar "||" s s s s
\break
\bar "||"
\mark \markup {\musicglyph "scripts.coda" }
aes2 ges4~ \tuplet 3/2 { ges8 es ges} es2. r4
aes2 ges4~ \tuplet 3/2 { ges8 es ges} es2 f
\override Glissando.style = #'zigzag
g aes bes c\glissando
es1-\fermata \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"