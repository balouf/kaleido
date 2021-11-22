% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Someday My Prince Will Come 2.0" 
 	composer = "Franck Churchill"
 	tagline = ""

}


accords = \chords {

        % 3/4
        bes2.:maj7 d1:7.5+ es:maj7 g2.:7.5+
        c:m7 g1:7.5+ c:m7 f2.:7
        d:m7 cis:m7.5- c2:m7 f:7
	d2.:m7 cis:m7.5- c2:m7 f:7
	bes2.:maj7 d1:7.5+ es:maj7 g2.:7.5+
        c:m7 g1:7.5+ c:m7 f2.:7
        bes2.:maj7 d2:7.5+ es2.:maj7 e2:m7.5-
        bes2.:maj7/f g2:7 c2.:m7 f2:7

        % 5/4
        bes2.:maj7 d2:7.5+ es2.:maj7 g2:7.5+
        c2.:m7 g2:7.5+ c2.:m7 f2:7
        d2.:m7 cis2:m7.5- c2.:m7 f2:7
	d2.:m7 cis2:m7.5- c2.:m7 f2:7
	bes2.:maj7 d2:7.5+ es2.:maj7 g2:7.5+
        c2.:m7 g2:7.5+ c2.:m7 f2:7
        bes2.:maj7 d2:7.5+ es2.:maj7 e2:m7.5-
        bes2.:maj7/f g2:7 c2.:m7 f2:7

}

staffViolon = \new Staff {
	\time 3/4
	\tempo 2. = 60 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()

f2. \time 2/4 bes2 fis a2 g \time 3/4 g2.
\bar "||" \break
g \time 2/4 es'2 b d2 c \time 3/4 c4 d es
\bar "||" \break
f f f a a a \time 2/4 f2 d4 es 
\time 3/4 f f f a a a \time 2/4 f2~ f4 r
\bar "||" \break
\time 3/4 f,2. \time 2/4 bes2 fis a2 g \time 3/4 g2.
\bar "||" \break
g \time 2/4 es'2 b d2 c \time 3/4 c4 d es 
\bar "||" \break
\time 5/4 f2 f4 c' bes4  b,4. c8 b c a'4 g4
 f f f f f4 f2.~ f4 r4
\bar "|."
\break 
\repeat unfold 4 {r2. r2} \bar "||" \break 
\repeat unfold 4 {r2. r2} \bar "||" \break 
\repeat unfold 4 {r2. r2} \bar "||" \break 
\repeat unfold 4 {r2. r2} \bar "|."



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
