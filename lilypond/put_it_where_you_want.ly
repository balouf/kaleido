% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Put It Where You Want It" 
 	composer = "Joe Sample"
 	tagline = ""

}


accords = \chords { s1 s
	\repeat volta 2 {
	\repeat unfold 16 {c1:7}
	d:9 f:9 c:7 c2:7 e:7 d1:9 f:9 c:7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxième
	}
\alternative {{c:7}{c:7}}
a:m c:7/g f:7 d:7
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 126
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<es' es,>8^"Intro" <es es,> <d f,> <d f,> <c g>4 a8 c->
r1 \repeat volta 2 {
bes8^\markup{Guitare} c4 c bes es8~ es c4.~ c2
es,8 f4 f es c'8~ c1
bes8 c4 c bes es8~ es c4.~ c2
es,8 f4 f es c8~ c1
bes'8 c4 c bes es8~ es c4.~ c2
es,8 f4 f es c'8~ c1
bes8 c4 c bes es8~ es c4.~ c2
es,8 f4 f es 
<<
  {s8 r8^\markup{Brass} es( d c-.) d4-. a8 c~ c1^\markup{Fill}}
  \\
  {c8~ c1 s}
>> 
r8 es( d c-.) d4-. a8 c~ c1^\markup{Fill}
r8 es( d c-.) d4-. e8 c~ c1^\markup{Fill}
r8 es( d c-.) d4-. a8 c~ c1^\markup{Fill}
}
\alternative{{r1}{r2 e8\repeatTie^\markup{Bridge} g g e}}
a2~ a8 g a c~ c4. a8 r2
a8 c c a c a c a es' es d c~ c a c a
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


theme = \staffViolon

\include "utils/books.ly"