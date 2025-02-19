% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Hallucinations" 
 	composer = "Bud Powell"
 	tagline = ""

}


accords = \chords {
  \partial 2. s2.
  \repeat volta 2 {
    f2:6 bes4.:7 a:7 d2:7 g2.:7 c2:13.9- f2:6 f:7 bes:7 b4.:m7.5- f4:7/c d2.:7.5- g4:7sus4 g4.:7 c2:7.9-
  }
  \alternative {{f4.:6 c:7 s4}{f4.:6 es:7 s4}}
  d2:m7 g:7 c:m7 f:7 bes:m7 es:7 a:m7 d:7
  g:m d:7/a bes:6 c:7 f:6 d:7 g4.:m7 d:7 s4
  f2:6 bes4.:7 a:7 d2:7 g2.:7 c2:13.9- f2:6 f:7 bes:7 b4.:m7.5- f4:7/c d2.:7.5- g4:7sus4 g4.:7 c2:7.9- f1:6
  b2:m7.5- e4.:7 a2:m7.5- d:7 g1:m7.5- s4 b8:9 bes4:9 aes8:m g:m ges f f1:6 g2:m7 c:7
  \repeat volta 2 {f2:6 bes:7 a:7 d:7 g:7 c:7 f:6 f:7 bes:7 b:m7.5- f:7/c d:7 g:m7 c:7}
  \alternative {{f:6 c:7}{f:6 es:7}}
  d:m7 g:7 c:m7 f:7 bes:m7 es:7 a:m7 d:7 g:m d:7/a bes:6 c:7 f:6 d:7 g:m7 c:7
  f2:6 bes:7 a:7 d:7 g:7 c:7 f:6 f:7 bes:7 b:m7.5- f:7/c d:7 g:m7 c:7
  f:6 c:7
  f4.:6 f4.:7 s4 bes2:7 b4.:m7.5- f4:7/c d2.:7.5- g4:7sus4 g4.:7 c4:7.9- ges8:7.9+ f1:maj9 s8
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 2. r8
  << \voiceOne {
c'~ c4 d8 e
}
\new Voice {\voiceTwo \override NoteHead.color = #red bes8~ bes4 a8 g}
  >>
 \oneVoice
\mark A
\repeat volta 2 {
  << \voiceOne {
f' g e f d4-.
}
\new Voice {\voiceTwo \override NoteHead.color = #red 
f,8 e d c bes4-.}
  >>
\oneVoice
r8 cis'~ cis4 c-. r b-.
r8 d f gis a e des bes
  << \voiceOne {
f'4
     }
\new Voice {\voiceTwo \override NoteHead.color = #red 
d8 c}
  >>
\oneVoice
r4 r f-.
aes-. aes8 aes g f r es r d4.~ d4 a8 c
r b r a \times 2/3 {bes des e} a f~
	}
\alternative {
{ f4. 
  << \voiceOne {
c8~ c4 d8 e
}
\new Voice {\voiceTwo \override NoteHead.color = #red bes8~ bes4 a8 g}
  >>
 \oneVoice
}
{
f'2.\repeatTie^\markup {\override #'(style . cross) \concat {
  \tiny \note {4.} #.5
  "   "
  \tiny \note {4.} #.5
}  
} r8 e
}
}
\mark B
f8 cis d e \times 2/3 {f g f} e d
es b c d \times 2/3 {es f es} d c
des a bes c \times 2/3 {des es des} c bes
a d r4 r r8 a
g bes d bes a c es c
bes d g f e g c bes
a f fis a d c bes a 
bes^\markup{\override #'(style . cross) \concat { \note {4.} #.5 "   " \note {4.} #.5 } } g r4 r \times 2/3 {c, 8 d e}
\mark C
f g e f d4-. r8 cis~
cis4 c-. r b-.
r8 d f gis a e des bes
  << \voiceOne {
f'4
     }
\new Voice {\voiceTwo \override NoteHead.color = #red 
d8 c}
  >>
\oneVoice
r4 r f-.
aes-. aes8 aes g f r es r d4.~ d4 a8 c
r b r a \times 2/3 {bes des e} a f~
\mark \markup { \musicglyph "scripts.coda" }
f1
\mark D
f4-. f-. bes,8 b r es~ es4. d8 r c r bes~
bes4. c,8 d f g a~
  << \voiceOne {
a1
     }
\new Voice {\voiceTwo \override NoteHead.color = #red 
r8 cis, c4-. ces8 bes bes a}
  >>
\oneVoice
r1^"Solo Break" r1 \bar "|."
\pageBreak
\repeat volta 2 {
\repeat unfold 7 {s1}
}
\alternative {{s} {s}}
\break
\repeat unfold 8 {s}
\break
\repeat unfold 8 {s}
\bar "|."
\break
\mark \markup {\musicglyph "scripts.coda" }
f''1\repeatTie^\markup{\override #'(style . cross) \concat { \note {4.} #.5 "   " \note {4.} #.5 } } aes4-. aes8 aes g f r es
r d4.~ d4 a8 c r b r a \times 2/3 {bes des e}
a g~ g1\fermata
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

\include "utils/books.ly"
