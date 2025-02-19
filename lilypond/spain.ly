% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm
ragged-bottom=##t
} 

\header {
	title = "Spain" 
 	composer = "Chick Corea"
 	tagline = ""

}




accords = \chords {
  b2.:m a4 b1:m
  e2.:m g4 fis1:7 b:m
  g fis:m e2:m a:7sus4
  d4:dim d2.:maj7.13
  g2:7 fis:7 b1:m
  \repeat volta 2 {
  s1 s e:m11 s2 fis:sus4 s1 fis g s fis:7 s
  e:m7 a:7 d:maj7 g:maj7 cis:7 fis:7.5+ b2:sus4 b s1
  \repeat unfold 10 {s1}}
  \alternative {{s b:sus4 s}{s}}
  g:maj7 s s s
  fis:7 s s s
  e:m7 s a:7 s
  d:maj7 s g:maj7 s
  cis:7 s fis:7 s 
  b:m7 s b:7 s
  g:maj7 d/bes b:sus4.9
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
fis32 e fis8.~ fis4~ fis8 fis16 g a8 \grace {b16(} a16) g
fis32 e fis8.~ fis4~ fis16 fis g a b8 cis
a16 g g fis \tuplet 3/2 {fis e d} e8~ e16 fis d cis d e cis b
cis2~ cis8 cis16 d e8 d16 cis cis4 b2.
b'32 a b8.~ b4~ b8 b16 cis d8 \grace {e16(} d16) cis
a32 g a8.~ a4~ a8 cis b16 a g a
g a g a b4 fis8 g16 fis g fis e d
cis8. d32 e fis2~ fis8 e16 d
cis d cis d e2~ e8 d16 cis cis4 b2.
\pageBreak
\time 2/2
\tempo 2 = 116
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
d'4-. \mark \default fis8 d e d b d
r cis a cis r  b g4-.
a4. a8 r4 a~ a2 fis4. fis8
r4 fis2.~ fis2 r4 <fis ais,>
<g b,>4. <a cis,> <b d,>4 <cis e,>4. <d fis,> <e g,>4
<d fis,>4. \grace {e16 d} <cis e,>8~  <cis e,>2~ <cis e,> r4 <fis, ais,>
\mark \markup { \musicglyph "scripts.segno" }
<g b,>4. <a cis,> <b d,>4 cis4. d e4
d e8 fis~ fis2~ fis r8 \grace {d} e4-. d8
cis4. d e4 d2 cis <cis e,>4. <b dis,>8~ <b dis,>2~ <b dis,>2. r4
\bar "||"
b8 \mark \default r r e r4 r8 g
fis4 d8 b e4 r8 a,
r4 r8 d cis4 r
a8 b4 g8~ g g d'4
e r8 e g4 fis8 d
b4 d8 b e4 cis8 b~ 
b fis e4 r8 fis4 b8
cis4. \grace {gis8} ais~ ais gis fis4
r8 cis fis cis gis' cis, ais' a~
a fis4 fis'8 r4 fis
\mark \markup { \musicglyph "scripts.coda" }
}
\alternative {
  {e2 d4. b8~ b2. b'4~ b2. r4}
  {e,2 d4. b8~}
}
<< {\voiceOne \mark \default b1~ b~ b}
   \new Voice
   {\voiceTwo  \override NoteHead.color = #red e2 d4. b8\laissezVibrer s1 s}
>> \oneVoice
\tuplet 3/2 {r4 b cis} \tuplet 3/2 {d cis b}
\grace {cis8} d4. cis ais4~ ais1~ ais
r2 \grace {e'8} fis2 e4. d b4~ b1~  b
\tuplet 3/2 {r4 a b} \tuplet 3/2 {cis d e}
d4. e fis4~ fis1~ fis
\tuplet 3/2 {r2 \grace {d8} e2 d}
cis4. d e4~ e1~ e
\tuplet 3/2 {r2 \grace {cis8} d2 cis}
cis2. b4~ b1~ b~ b2 r4 fis
\bar "|."
\break
\mark \markup {\musicglyph "scripts.coda" } e'1\fermata^"Solos on C, end solos with C -> DS -> 2nd, last time C, DS (8) -> DC al coda"  d\fermata b\fermata \bar "|."




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

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 72
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme = \staffViolon

\include "utils/books.ly"
