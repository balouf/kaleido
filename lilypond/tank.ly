% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "TANK! (Cowboy Bebop)" 
 	composer = "Yoko Kanno"
 	tagline = ""

}

accords = \chords {
	R1*4
	R1*8
	R1*8 R1*8
	\repeat volta 2 {
	c1:m s s s c:m s s s
	f:m7 s s s c:m7 s s s
	g:aug s a:aug s c:m s
	}
	\alternative {{g s}{g s}}
	c:m s s s c:m s s s
	a:m s e:m s a:aug aes:aug g s
	c1:m s s s c:m s s s
	f:m7 s s s c:m7 s s s
	g:aug s a:aug s c:m s g s
	f2./c es1/bes aes:m6 ges:m6 e4:m 
	\mark \markup{N.C.}
	s1 s s s
	g:aug s aes:aug s a:aug s s s
	g:aug s s s s s s s
	f2./c es1/bes aes:m6 ges:m6 e4:m
	s1 s s s
	c:m
}


staffViolon = \new Staff {
	\time 2/2
	\tempo 2 = 140 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
g''8-> g4-> g8-> g4-> g8-> g8-> r g-> g4-> bes-> b->
R1*2
%\mark \markup {\box {A}}
R1*8
%\mark \markup {\box {B}}
R1*8
%\mark \markup {\box {C}}
R1*8
%\mark \markup {\box {D}}
\repeat volta 2 {
\mark \markup { \musicglyph "scripts.segno" }
c,,8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 r
c8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 r
%\mark \markup {\box{G}}
f8 c'4 f,8 b4 f8 aes r f es2 f4~ f1~ f2 r
c8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 r
%\mark \markup {\box{F}}
<<
	\voiceOne {\stemDown fis'8 g r4 r fis8 g r2 bes8 a r4
	aes8 a r4 r aes8 a r2 c8 b r4 \stemNeutral}
	\new Voice {\voiceTwo \override NoteHead.color = #red
		\stemUp
	r4 r8 g,,-> r2 r8 g-> r4 r2
	r4 r8 a-> r2 r8 a-> r4 r2}
>>
\oneVoice
c8 g'4 c,8 ges'4 c,8 es r c bes2 c4 }
\alternative {
	{r4 <g'' d>-> <g d>-> <g d>-> <g d>-> <g d>-> <g d>8-> <g d>-> r4}
	{r2 g,4-^ r <bes es,>-- <b e,>-> r <c c,>->~}
}
c1
	\tuplet 3/2{r2 c, c'} \tuplet 3/2{b c, b'} \tuplet 3/2 {bes c, bes'} g8 aes g f g2~ g1
	r2 r4 f g aes g f e c2.~ 
	<< \voiceOne {c1
	bes'~\sfz\< bes\!
	ges'4.-> ges8->~ ges2
	f4.-> f8->~ f2
	e1->~ e}
	\new Voice {\voiceTwo \override NoteHead.color = #red
	\tuplet 3/2 {c2 a e}
	\tuplet 3/2 {r bes' c}
	\tuplet 3/2 {d c bes}
	a4.-> a8->~ a4 aes8 a
	bes4.-> bes8->~ bes4 a8 bes
	b1->~ b}
>>
\oneVoice
	\bar "||"
	% reprise theme
	<< \voiceTwo {
	c,8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 s
	c8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 s
	f8 c'4 f,8 b4 f8 aes r f es2 f4~ f1~ f2 s
	c8 g'4 c,8 ges'4 c,8 es r c bes2 c4~ c1~ c2 r}
	\new Voice {\voiceOne \override NoteHead.color = #red 
	% reprise theme, contre-chant
	s1 s
	es'4 es c8 bes g ges f es c g bes a4.
	s1 s
	es'8-> f4-> g-> bes4-> c8-> r es,4-> f8-> g4-> bes->
	s1 s2 s4
	c8 d f e es c b bes aes f aes c, b bes aes f4.
	s1 s
	r4 c'' c bes8 g es'4-. e2.--}
>>
\oneVoice
\once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible 
\mark \markup { \musicglyph "scripts.coda" }
<<
	\voiceOne {\stemDown fis8 g r4 r fis8 g r2 bes8 a r4
	aes8 a r4 r aes8 a r2 c8 b r4 \stemNeutral}
	\new Voice {\voiceTwo \override NoteHead.color = #red \stemUp
	r4 r8 g,,-> r2 r8 g-> r4 r2
	r4 r8 a-> r2 r8 a-> r4 r2}
>>
\oneVoice
	%\mark^\markup{\musicglyph "scripts.coda"}
	%%
%	fis8 g r4 r fis8 g r2 bes8 a r4
%	aes8 a r4 r aes8 a r2 c8 b r4
	c8 g'4 c,8 ges'4 c,8 es r c bes2 c4 
	r2 g'4-^ r <bes es,>-- <b e,>-> r2
	% Bridge solo
	\bar ".|"
	<c a>4. f,8~ f4 <bes g>~ <bes >4. es,8~ es4 <aes f>~ <aes f>4. des,8~ des4 <ges es>~ <ges es>4. b,8~ b4 <e b>
	\bar "||"
	\repeat percent 4 {r1^\markup{Solo take-off -> AABA -> DS al Coda}} \bar ":|."
\break
\mark \markup {\musicglyph "scripts.coda" }
<<
	\voiceOne {\stemDown fis'8 g r4 r fis8 g r2 bes8 a r4
		aes8 a r4 r aes8 a r2 c8 b r4
	bes8 b r2 bes8 b r2 d8 des r4 \stemNeutral}
	\new Voice {\voiceTwo \override NoteHead.color = #red \stemUp
	r4 r8 g,,,-> r2 r8 g-> r4 r2
r4 r8 aes-> r2 r8 aes-> r4 r2
r4 r8 a-> r2 r8 a-> r4 r2
}	
>>
\oneVoice
r4 <es'' des>8 <es des> r2
<f es>8 <f es> r4 r2
<b f>2.-> <b f>4~-> <b f>1~ <b f>~ <b f>2 r
<b f>2.-> <b f>4~-> <b f>1~ <b f>~ <b f>2 r
<c, a>4. f,8~ f4 <bes g>~ <bes >4. es,8~ es4 <aes f>~ <aes f>4. des,8~ des4 <ges es>~ <ges es>4. b,8~ b4 <e b> \bar "||"
r4 c''8 c c c c c  c c c c es4 c8 c  c c es4 c8 c c c ges' f~ f4~ f2 es1-\fermata \bar "|."
	}
}

\paper {
  page-count = #2
}


theme = \staffViolon

\include "utils/books.ly"
