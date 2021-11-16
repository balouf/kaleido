% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Down Time" 
 	composer = "David Liebman"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {
	\repeat unfold 9 {s1}
}
\alternative {{s1} {s1}}
\repeat unfold 6 {s1} \break
d1:7.9+ f2:7.9+ bes:7.11+ des:7 ges:7 a:7 aes:7.5- \break
g1:7.5- des2:min7 ges:7  b:maj d:7 g:maj bes:7.11+
a:7 ees:7.11+ ees1:7.11+ \break
d1:7.9+ f2:7.9+ bes:7.11+ des:7 ges:7  a:7 aes:7.5- \break
g1:7.5- des2:min7 ges:7 b:maj d:7 g:maj bes:7.11+ 
a:7 ees:7.11+ ees1:7.11+ \break
aes:7.9- g:7sus ges:7 f:7.9- e:7.9+ a:7sus4
}

theme = \new Staff {
	\time 4/4
	%\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 130 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	%\transposition bes,,
	\key c \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here  
	\repeat volta 2 {
		\acciaccatura {aes'8} a8 c \tuplet 3/2 {aes g f} d4 f
		b16 bes aes f \tuplet 3/2 {bes8 aes f} aes4. e8
		f b ees, e~ e4. ges8
		g d' b bes~ bes4. a8
		\tuplet 3/2 {aes g f} \tuplet 3/2 { d c b} f'4. g8
		aes des, ees e~ e2
		dis8 cis' gis g fis c'~ c4
		b8 fis f e~ e4. aes8
		a fis g e
		<<
		{f16 a8.~ a4}
		{s16 c8.~ c4}
		>>		
		}
		\alternative {
			{r1}
			{r2 r4 r8 f}
		}
	ges ees f d e16
<<
{c8.->~ c4~ c2..}
{a8.~ a4~ a2..}
>>
ees'8
e des ees b bes16 <<{a8.~ a4~ a1}{ges'8.->~ ges4~ ges1}>>
r4 \tuplet 3/2 {gis,8 d' g} \tuplet 3/2 {bes f c~} c4
\mark \markup {\musicglyph "scripts.coda" }
<<{\tuplet 3/2 {cis16 b a} g8~ g2.}{\tuplet 3/2 {g16 f ees } des8~ des2.}>>
\repeat volta 2 {
\repeat unfold 10 {s1} \bar "||"
\repeat unfold 10 {s1} \bar "||"
\repeat unfold 6 {s1}
\break
}
\mark \markup {\musicglyph "scripts.coda" } 
<<{\tuplet 3/2 {cis'16 dis f} g8~ g2.}{\tuplet 3/2 {ais,16 a g} f8~ f2.}>>
\bar "|."
}
}


\include "utils/books.ly"