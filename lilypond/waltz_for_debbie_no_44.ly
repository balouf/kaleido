% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Waltz for Debby (sans 4/4)" 
 	composer = "Bill Evans"
 	tagline = ""

}


accords = \chords {
	\repeat unfold 2 {
	f2.:maj7 d:m7 %f2.:maj7/a d:m
	g:m7 e:7 a:7/cis d:7/c g:7/b c:7 f:7 bes:maj7
	
	g:m7 c2:7 c4:7/bes a2.:m7 d:7 g:m7 c:7
	
	f2.:maj7 d:m7 %f2.:maj7/a d:m
	g:m7 e:7 a:7/cis d:7/c g:7/b c:7 f:7 bes:maj7
	
	b:m7 e:7 a:maj7 b:m7 cis:m7 b:m7
	
	g:m7 c:7 a:m7 d:7 g:m7 a:7 d:m7 f:7
	bes:maj7 a:7 d:m7 e:7 a:m7 aes:7 g:m7 ges:7
	
	f2.:maj7 d:m7 %f2.:maj7/a d:m
	g:m7 e:7 a:7/cis d:7/c g:7/b c:7 f:7 bes:maj7
	
	bes:6 es:7 a:m7 d:7 b:m7 e:7
	
	\repeat percent 2 {a:m7} bes:maj7 es:7 a:m7 aes:m7.5-
	a:m7 aes:m7.5- g:m7 c:7 \repeat percent 4 {f:6}
	}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÂ¨me
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
r4 g f e f g 
\break
a2 g4 f g a bes2 a4 g a bes c2.
a,4 bes c d e f g a bes
\break
\bar "||"
c2. f, bes e, a~ a
r4 g f e f g 
\break
a2 g4 f g a b2 a4 gis a b cis2.~ cis~ cis r4 cis2
\bar "||"
d2.~ d2 c4 d2.~ d2 c4 d c bes a aes g a2 f4 d' c bes 
\break
a2. g4 a g 
f a c e f d c2. aes,4 bes c d e f g a bes
\break
\bar "||"
c2. f, bes e, a~ a
r4 g f e f g 
\break
a2 g4 f g a bes a g a bes c
d2.~ d 
\break
r4 e d e d e c2.~ c r4 c bes c bes c
a2.
\break
r4 g f g f g f g f d'2. e, f~ f~ f~ f \bar "|."
\pageBreak
%\time 4/4
%\tempo \markup {
%    \concat {
%      (
%      \smaller \general-align #Y #DOWN \note {2} #1
%      " = "
%      \smaller \general-align #Y #DOWN \note {2.} #1
%      )
%    }
%  }
%g8 f g f~ f g f d'~ d4. e,8~ e4 r
%r8 g, f4 g8 f4 d'8~ d4 e,2.
%g'8 f g f~ f g f4 d'2 e,
%r8 g, g f g f4 d'8 r e, r4 r2
%\bar "||"
%\repeat unfold 8 {s1}
%\bar "||"
%\repeat unfold 8 {s}
%\bar "||"
%\repeat unfold 8 {s}
%\bar "||"
%\repeat unfold 8 {s}
%\bar "||"
%\repeat unfold 6 {s}
%\mark \markup {\musicglyph "scripts.coda" }
%s s
%\bar "|."
%\break
%g'8 f g4 f8 g f4 d'2 e,
%g8 f g4 f8 g f4 d'2 e, f1-\fermata
%\textSpannerDown
%\override TextSpanner.bound-details.left.text =
%  \markup { \upright "rall" }
%f,4\startTextSpan des ges es c1-\fermata \stopTextSpan
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
\repeat unfold 8 {s2.}
\break
\repeat unfold 8 {s2.}
\bar "||"
\break
\repeat unfold 8 {s2.}
\break
\repeat unfold 8 {s2.}
\bar "||"
\break
\repeat unfold 8 {s2.}
\break
\repeat unfold 8 {s2.}
\bar "||"
\break
\repeat unfold 8 {s2.}
\break
\repeat unfold 8 {s2.}
\bar "||"
\break
\repeat unfold 6 {s2.}
\break
\repeat unfold 8 {s2.}
\bar "|."
% % c c c c c c c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
