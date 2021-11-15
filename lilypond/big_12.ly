% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Big 12" 
 	composer = "Trombone Shorty"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {
	a1:m f a:m f
}
	\repeat volta 2 {
	a1:m f
}
a1:m f a1:m f
	\repeat volta 2 {
	a1:m f
}
	\repeat volta 2 {
	a1:m f
}
a1:m f
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 90 
	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
	a8^"Theme" b c16 e r8 a,8 b c16 e r8
a,8 b c16 a'8. aes8 b a16 e r8
a,8 b c16 e r8 a,8 b c16 e r8
<<
{e8 f aes16 a b c d8 \tuplet 3/2 {c16 d c} b a r8}
{a8 b c16 d e f g8 \tuplet 3/2 {f16 g f} e c r8}
>>
}
\repeat volta 2 {
	r16 e,[ r e]  f d c a e'8 f e[ d]
	r16 d e f~ f d c a e' f e d g f e d
}
<<
{
	\stemUp
c'8 a16 a a a c8 c8. c16 c8 c
c a16 a a a c8 r2
c8 a16 a a a c8 c8. c16 c8 c
c a16 a a a c8 r2
}
\\
{	\stemDown
a,8. b16 r8 c r16 e d8 r4
d8. c16 r8 b r4 g'
a,8. b16 r8 c r16 e d8 r4
d8. c16 r8 b r4 g'
}\\
>>
\stemNeutral
\break
\repeat volta 2 {
	<<{c16^"Riffs" c}{a a}>> r8 r4 r2
	<<{aes16 aes}{f f}>> r8 r4 r <<{aes16 a bes b}{f fis g gis}>>
}
\break
\repeat volta 2 {
	e e r8 r4 r4. e8
	f16 f r8 e4 d g
}
<<{c16 c}{a a}>> r8 r <<{c16 c}{a a}>> r4 <<{c16 b bes a}{a aes g ges}>>
<<{aes16 aes}{f f}>> r8 r <<{aes16 aes}{f f}>> r4  <<{aes16 aes}{f f}>> r8 
	}
}


\include "utils/books.ly"