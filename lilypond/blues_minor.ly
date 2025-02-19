% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 30)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Blues Minor" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
	f1:m s s s
	f1:m s s s
	bes:m s s s
	bes:m s s s
	f:m s s s
	f:m s s s
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÆ’Ã‚Â¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 245 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat unfold 2 {
<<
	{c'8 bes c4 bes8 aes bes4
	aes8 f aes4 f8 es f4
	es4. f8~ f2~ f1}\\
	{g8 f g4 f8 es f4
	es8 c es4 c8 bes c4
	bes4. c8~ c2~ c1}
>>
}
\bar "||"
\repeat unfold 2 {
c'8 bes c4 bes8 aes bes4
	aes8 f aes4 f8 es f4
	es4. f8~ f2~ f1
}
	\bar "||"
\repeat unfold 2 {
	<<
	{c'8 bes c4 bes8 aes bes4
	aes8 f aes4 f8 es f4
	es4. f8~ f2~ f1}\\
	{g8 f g4 f8 es f4
	es8 c es4 c8 bes c4
	bes4. c8~ c2~ c1}
>>
}
\bar "|."
	%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

\include "utils/books.ly"
