% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Casa Forte" 
 	composer = "Edu Lobo"
 	tagline = ""

}


accords = \chords {
		\partial 8 s8
		\repeat volta 2 {
			es1:maj9 s
		d:m6.9 s
		es1:maj9 s
		d:maj9 s
		c:sus4.7.13 s
		b:sus4.7.13 s
		}
		\alternative

		{{c:sus4.7.13 s
		b:sus4.7.13 s}{c:sus4.7.13 s
		es:maj7 s}}
		\repeat volta 2
		{d:m a:7.5+/cis f:/c b:m7.11^5
		bes:7 s g:m/bes s
		g:sus4/d f:sus4/d g:sus4/d f:sus4/d}
		\repeat volta 2 {
			d:m a:7.5+/cis f:/c b2:m7.11^5 a:7
			d1:m a:7.5+/cis f:/c b2:m7.11^5 a:7
		}
		d1:m a:7.5+/cis f:/c b2:m7.11^5 a:7
		s1 s2 s4 d:m
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 240 
	\set Staff.midiInstrument = "violin"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 a8
\repeat volta 2
{
bes c r d r es r f
r g r a r bes r g
a4. e8~ e2~
e r4 r8 a,
bes c r d r es r f
r g r a r bes r g
a1~
a2 r4 r8 a
bes a r g f4 e~
e4. d8 c4. bes8
cis2 a~ 
a r4 r8 a'
}
\alternative {
	{bes a r g f4 e~
	e4. d8 c4. bes8
	cis1 
	r2 r4 r8 a
}
	{bes' a r g f4 e~
	e4. f8 g4. a8
	bes1~
	bes
}
}
\break
\repeat volta 2
{a g f e2. d8 e
f e f4 d f8 e
f4 d2 r8 e
f e f4 d f8 e
f4 d2 c8 d
d1~ d r r}
\break
\repeat volta 2
{
	<<{\parenthesize d1 \repeatTie s4.}\\
		{\stemUp a'4. a,8 a'4 g~ g4.}
>> \stemNeutral
a,8 g'4 f4~
f4. a,8 f'4 e~
e4. a,8 e'4 
	<<{d~ \parenthesize d1 \repeatTie s4.}\\
		{s4 \stemUp a'4. a,8 a'4 g~ g4.}
>> \stemNeutral
a,8 g'4 f4~
f4. a,8 f'4 e~
e4. a,8 e'4  \mark \markup {\musicglyph "scripts.coda" } d \laissezVibrer
}
\break
 \mark \markup {\musicglyph "scripts.coda" }
	<<{\parenthesize d1 \repeatTie s4.}\\
		{\stemUp a'4. a,8 a'4 g~ g4.}
>> \stemNeutral
a,8 g'4 f4~
f4. a,8 f'4 e~
e4. a,8 e'4 d
r1^"Drum fill" r2 r4 d'-^ \bar "|."

	}
}


\include "utils/books.ly"