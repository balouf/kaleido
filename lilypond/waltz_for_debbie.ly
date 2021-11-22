% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Waltz for Debby" 
 	composer = "Bill Evans"
 	tagline = ""

}


accords = \chords {
	s2. s %f2.:maj7/a d:m
	s s s s s s
	s s s s s s s s
	
	s s s s s s s s
	s s s s s s s s
	
	s s s s s s s s
	s s s s s s s s
	
	s s s s s s s s
	s s s s s s s s
	s s s s s s s s
	
	s2 %f2:maj7 
	s s1 s s
	s s s s
	\pageBreak
	a2:m d:m g:m c:7 a:7 d:7 g:7 c:7 \break 
	f:7 bes:maj7 g:m7.5- c:7 a:m d:m g:m c:7 \break
	
	a2:m d:m g:m c:7 a:7 d:7 g:7 c:7 \break
	a:7 d:m b:7 e:7 a1:maj7 a:maj7 \break 
	
	g2:m c:7 a:m d:7 g:m a:7 d:m c:m \break
	bes:maj7 a:7 d:m g:7 aes:maj7 des:maj7 g:m c:7 \break 
	
	a2:m d:m g:m c:7 a:7 d:7 g:7 c:7 \break 
	f:7 bes:maj7 g:m7.5- c:7 a:m d:7 b:m e:7 \break
	
	a:m f:7 bes:maj7 a:7.9+ d1:m g2:7 aes:dim \break
	a:m aes:dim g:m c:7 f:maj7 d:m g:m c:7
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 3/4
	\tempo 2. = 56 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
c'2. f, bes e, a~ a
r4 g f e f g a2 g4 f g a bes2 a4 g a bes c2.
a,4 bes c d e f g a bes
\bar "||"
c2. f, bes e, a~ a
r4 g f e f g a2 g4 f g a b2 a4 gis a b cis2.~ cis r r
\bar "||"
d,2.~ d2 c4 d2.~ d2 c4 d c bes a2. g2 f4 d' c bes a2 bes4 a2 e4
f a c e f d c2. aes4 bes c d e f g a bes
\bar "||"
c2. f, bes e, a~ a
r4 g f e f g a2 g4 f g a bes a g a bes c
d2.~ d r4 e d e d e c2.~ c r4 c bes c bes c
a2.~ a r4 g f g f g
\time 4/4
\tempo \markup {
    \concat {
      (
      \smaller \general-align #Y #DOWN \note {2} #1
      " = "
      \smaller \general-align #Y #DOWN \note {2.} #1
      )
    }
  }
g8 f g f~ f g f d'~ d4. e,8~ e4 r
r8 g f4 g8 f4 d'8~ d4 e,2.
g8 f g f~ f g f4 d'2 e,
r8 g g f g f4 d'8 r e, r4 r2
\bar "||"
\repeat unfold 8 {s1}
\bar "||"
\repeat unfold 8 {s}
\bar "||"
\repeat unfold 8 {s}
\bar "||"
\repeat unfold 8 {s}
\bar "||"
\repeat unfold 6 {s}
\mark \markup {\musicglyph "scripts.coda" }
s s
\bar "|."
\break
g8 f g4 f8 g f4 d'2 e,
g8 f g4 f8 g f4 d'2 e, f1-\fermata
\textSpannerDown
\override TextSpanner.bound-details.left.text =
  \markup { \upright "rall" }
f4\startTextSpan des ges es c1-\fermata \stopTextSpan
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
