% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Oleo" 
 	composer = "Sonny Rollins"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {\repeat unfold 7 {s1}}
	\alternative {{s}{s}}
	a:m d:7 \repeat percent 2 {g:7}
	\repeat percent 2 {c:7} \repeat percent 2 {f:7}
	\repeat unfold 8 {s1}
	\repeat volta 2 {
	bes2 b:m7.5- c:m cis:m7.5- d:m g:7.9+ c:m f:7.9+ bes bes:7 es e:m7.5-
	}
	\alternative {{bes g:7 c:m f:7}{bes1 bes}}
	\repeat percent 2 {d:7} \repeat percent 2 {g:7} \repeat percent 2 {c:7} \repeat percent 2 {f:7}
	bes2 b:m7.5- c:m cis:m7.5- d:m g:7 c:m f:7 bes bes:7 es e:m7.5- bes g:7 c:7 f:7 
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 162 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
r8 bes'4-. f8 c'4.--( bes8)
r f( d'2 es8 d-.)
r bes4-. f8( d' es d c
bes f g a) r bes4-. g8(
c4-.) r8 bes-. r \parenthesize g( bes4-.)
r8 bes4-. \parenthesize g8( es'd a c)
r4 r8 g4-. bes-. g8(
}
\alternative {{d'4-.) r8 bes( d c a f)}{des'( bes c bes) r2}}
\break 
\chordmode {\mark \markup{Bridge} a1:m d:7 \repeat percent 2 {g:7}
\repeat percent 2 {c:7} \repeat percent 2 {f:7} }
\break 
r8 bes4-. f8 c'4.--( bes8)
r f( d'2 es8 d-.)
r bes4-. f8( d' es d c
bes f g a) r bes4-. g8(
c4-.) r8 bes-. r \parenthesize g( bes4-.)
r8 bes4-. \parenthesize g8( es'd a c)
r4 r8 g4-. bes-. g8
des'( bes c bes) r2
\break
% \bar "|."
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
	\repeat volta 2 {s1 s s s \break s s}
	\alternative {{s s}{s s}}
	\bar "||"
	\break 
	\mark \markup{Bridge}
	\repeat unfold 4 {\repeat percent 2 {s}} \break
	\bar "||"
	\repeat unfold 4 {s} \break \repeat unfold 4 {s} 
\bar "|."
% c c c c c c c c
	}
}

theme = \staffViolon

\include "utils/books.ly"