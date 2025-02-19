% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Sack of Woe" 
 	composer = "Julian Adderley"
 	tagline = ""

}


accords = \chords {
	R1*8
	\repeat volta 2 {
	f1:7 s s s
	bes:7 s f:7 s
	c:7 bes:7 f:7 s
	f:7 s s s
	bes:7 s f:7 s
	c:7 bes:7 c:7 s
	}
	\alternative
	{{f:7 s s s}
	{
	}}
	\repeat volta 2 {
	\repeat percent 3 {f:7} c2:m f:7
		bes1:7 bes2:7 bes:m7.5- f1:7 a2:m d:7
		g1:m c:7 a2:m d:7 g:m c:7
	}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.skipBars = ##t
%\set Timing.beamExceptions = #'()
\override Glissando.style = #'zigzag
	R1*8
	\repeat volta 2
	{
	r2 c'8--( es~ es4)
	\tuplet 3/2 {b8( bes aes} f4) aes8( bes4-.) f8~ f1~ f
	r2 c'8--( es~ es4)
	\tuplet 3/2 {b8( bes aes} f4) aes8( bes4-.) f8~ f1~ f
	r2 c'8--( es~ es4)
	\tuplet 3/2 {b8( bes aes} f4) aes8( bes4-.) f8~ f1~ f
	e'8.( f16 e f8.~ f4) \glissando b,
	c-^ gis-^ a-^ r
	r c8.-. b16 bes 8.-. aes16-. f( es f8~ f1)
	e'8.( f16 e f8.~ f4) \glissando b,
	c-^ g-^ aes-^ r
	r c8.-. b16 bes 8.-. aes16-. f( es f8~ f1)
	e'8.( f16 e f8.~ f4) \glissando b,
	c-^ gis-^ a-^ r
	r2 c8--( es~ es4)
	\tuplet 3/2 {b8( bes aes} f4) aes8( bes4-.) f8~ 
	}
	\alternative {{f1~ f~ f~ f \break }{s^"Solos"}} s s s \break s s s s \break s s s s
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
}

theme = \staffViolon

\include "utils/books.ly"
