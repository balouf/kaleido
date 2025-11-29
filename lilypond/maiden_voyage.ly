% Created on Tue Mar 16 11:51:51 CET 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")
\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Maiden Voyage" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat volta 2 {
	\repeat percent 4 {a1:min/d}
\repeat percent 3 {c':min/f}} 
\alternative {{s}{s}}
\repeat percent 4 {bes:min/ees}
\repeat percent 4 {aes:min/des}
\repeat percent 4 {a:min/d}
\repeat percent 4 {c':min/f}
\repeat volta 2 {
	\repeat percent 4 {a1:min/d}
\repeat percent 4 {c':min/f} \break
\repeat percent 4 {a:min/d}
\repeat percent 4 {c':min/f} \break
\repeat percent 4 {bes:min/ees}
\repeat percent 4 {aes:min/des} \break
\repeat percent 4 {a:min/d}
\repeat percent 4 {c':min/f}}
}


theme = \new Staff {
	\time 4/4
	%\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 120 
	% \set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	%\transposition ees,,
	\key c \major
	\clef treble
	\relative c' { 	
 % Type notes here 
 \partial 4 <<{a'8\( d}{f,8\( b}>>
 \repeat volta 2 {
 <<{d1~ d~ d2\)}{a1~ b~ c2\)}>> r r r4
 c8\( d ees f <<{c2.~ c1~ c2\)} {es2.~ d1~ c2\)}>> r2 }
 \alternative {{r2 r4 <<{a8\( d\)}{f,8\( b}>> }{ r2 r4 c8\( f}}
 <<{f1~ f~ f2\)}{c1~ des~ es2\)}>> r
 r r4 ees8\( e e fis <<{cis2.~ cis1~ cis2\)}{g2.~ aes1~ bes2\)}>> r
r2 r4 <<{a8\( d}{f,8\( b}>> \mark \markup {\musicglyph "scripts.coda" }
 <<{d1~ d~ d2\)}{a1~ b~ c2\)}>> r r r4
 c8\( d ees f <<{c2.~ c1~ c2\)} {es2.~ d1~ c2\)}>> r2 r1
 \break
 \repeat volta 2 {
 \repeat unfold 4 {s1 s s s s s s s}}
 \break
 \mark \markup {\musicglyph "scripts.coda" }
<<{d1( e f g a c d)}{a, b c d e g a}>>
 \bar"|."
	}

}


\include "utils/books.ly"