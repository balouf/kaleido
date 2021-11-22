% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "How Insensitive (Insensatez)" 
 	composer = "A.C. Jobim"
 	tagline = ""

}


accords = \chords {
	\repeat percent 2 {d1:m} \repeat percent 2 {cis:m7.5-} \repeat percent 2 {c:m} \repeat percent 2 {g:7/b}
	\repeat percent 2 {bes:maj7} \repeat percent 2 {es:maj7} e:m7.5- a:7.9+ \repeat percent 2 {d:m}
	c:m f:7 \repeat percent 2 {b:m7.5-} bes:maj7 e2:m7.5- a:7.9+ \repeat percent 2 {d1:m}
	c:m f:7 b:m e:7.9- e:m7.5- a:7.9+ d:m a:7.9+
		\repeat percent 2 {d1:m} \repeat percent 2 {cis:m7.5-} \repeat percent 2 {c:m} \repeat percent 2 {g:7/b}
	\repeat percent 2 {bes:maj7} \repeat percent 2 {es:maj7} e:m7.5- a:7.9+ \repeat percent 2 {d:m}
	c:m f:7 \repeat percent 2 {b:m7.5-} bes:maj7 e2:m7.5- a:7.9+ \repeat percent 2 {d1:m}
	c:m f:7 b:m e:7.9- e:m7.5- a:7.9+ d:m a:7.9+
	% coda	
	b1:m7.5- e:m7.5- a:7.9+ d:m b:m7.5- bes:maj7 a:7.9+ d2:m g:7.4+
%c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 120
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
a'1~ a4 bes8 a~ a bes4 a8~
a1~ a4 bes8 a~ a bes4 a8~
a2~ a8 gis4 a8 c b4 bes8~ bes a4 a8~
a4. g8~ g2~ g~ g4. g8~
\bar"||"
g1~ g4 a8 g~ g a4 g8~
g1~ g4 a8 g~ g a4 g8~
g2 r8 fis4 g8 bes a4 gis8~ gis g4 g8~
g4. f8~ f2~ f~ f4. f8~
\bar"||"
f1~ f4 g8 f~ f g4 f8~
f1~ f4 g8 f~ f g4 a8~
a2. f4 d e8 d~ d e4 f8~
f2 f~ f~ f4. f8~
\bar"||"
f1~ f4 g8 f~ f g4 e8~
e1~ e4 f8 e~ e f4 e8~
e2 r8 dis e g~ g fis4 f8~ f e4 e8~
e4. d8~ d2~ \mark \markup {\musicglyph "scripts.coda" } d4 r r2
\bar "|." \break
s1 s s s s s s s
\bar "||" \break
s1 s s s s s s s
\bar "||" \break
s1 s s s s s s s
\bar "||" \break
s1 s s s s s s \mark \markup {\musicglyph "scripts.coda" } s
\bar "|." \break
\mark \markup {\musicglyph "scripts.coda"} s \bar "||" s s s s s s s2-\fermata s-\fermata
\bar "|."
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

\include "utils/books.ly"