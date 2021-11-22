% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Ornithology" 
 	composer = "Charlie Parker"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2
	{g1:maj7 g1:maj7 g:m c:7 f:maj7 f:maj7 f:m bes:7 es:7 
	a2:m7.5- d:7.9+}
	\alternative 
	{
	{g1:m d:7.9+ b:m e:7.9+ a:m d:7.9+}
	{g:maj7 c2:m f:7 b:m e:7.9+ a:m d:7 g:maj7 e:7.9+ a:m d:7}}
	\repeat volta 2
	{g1:maj7 g1:maj7 g:m c:7 f:maj7 f:maj7 f:m bes:7  
	}
	\alternative 
	{
	{es:7 a2:m7.5- d:7.9+ g1:m d:7.9+ b:m e:7.9+ a:m d:7.9+}
	{es:7 a2:m7.5- d:7.9+ g1:maj7 c2:m f:7 b:m e:7.9+ a:m d:7 g:maj7 e:7.9+ a:m d:7}}
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 8 d8
\repeat volta 2 {
g a b c d b c d
b g r4 r r8 d
g a bes c d e4 f8
r8 g, a bes~ bes4. d8
c a4 f8 bes gis a f
r2 r4 r8 aes~
aes4 g8 f e g f c
f4 es8 d r4 r8 des'~
\bar "||"
des4 c8 bes a c bes g
a4 g8 fis r4 r8 d}
\alternative {
	{a'g d bes f' \parenthesize d es d
	r2 r8 b' c d
	r4 r8 b~ b a4 g8
	gis b d f~ f4 e8 c
	r4 r8 a~ a g4 f8
	fis a c es~ es4 d8 d,}
	{a' g d b f' \parenthesize d es d
	r1
	b'8 d fis d f des bes gis
	a c e c es c aes fis
	g4 r r2 r1}
}
\break
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {s1 s s s s s s s \break}
 \alternative {{s1 s s s s s s s \break}{s1 s s s \break s s s s}}
 \bar "|."
	}
}

theme = \staffViolon


\include "utils/books.ly"
