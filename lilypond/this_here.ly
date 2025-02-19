% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")
\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "This Here (Dis Hyunh)" 
 	composer = "Bobby Timmons"
 	tagline = ""

}


accords = \chords {
	s2. s
	\repeat volta 2
	{
	f:7 s s s
	f:7 s s s
	bes:7 s s s
	f:7 s s s
	bes:7 s a:7 s aes:7 s g:7 s aes:7 s g:7 s
	f:7 s s s
	f:7 s s s}
}
staffViolon = \new Staff {
	\time 3/4
	\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 114 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "tenor sax"
	\key bes \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here 
 	r8 c'4-. f-. c8
 	 f-. ( f16 ees c8 bes aes4--
 	 \repeat volta 2 {
 	f2.~ f )
 	r8 c'4-. f-. c8
 	 f-. ( f16 ees c8 bes aes4--
 	f2.~ f )
 	r8 f4-. ( aes-. f8
 	aes-. aes16 f c8 bes aes f
 	<<{g4 aes2~aes2.}{des4 d2~ d2. )}>>
 	r8 c'4-. f-. c8
 	f-. ( f16 ees c8 bes aes4--
 	f2.~ f )
 	r4 r c ( d f g8. d16 \bar "||" f2.~ f~ f2 )
 	f8 ( f d'-. c4-. aes-- d,8 f2.~ f~ f2 )
 	c8 ( c d4 f g8. d16 \bar "||" f2.~ f)
 	r8 f'4-. ( aes-. f8
 	aes-. aes16 f c8 bes aes f )
 	<<{aes4 a2~ a2.~ a2.~ a2.~ a2.~ a2.}{d,4 ees2~ ees2.~ ees2.~ ees2.~ ees2.~ ees2.}>>
 	r8 c'4-. f-. c8
 	f-. ( f16 ees c8 bes aes4-- )
 	 }
	}
}


theme = \staffViolon

\include "utils/books.ly"
