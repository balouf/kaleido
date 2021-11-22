% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Cantaloupe Island" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
		\repeat percent 4 {f1:m}
		\repeat volta 2 {
			\repeat percent 4 {f1:m}
			\repeat percent 4 {des:7}
			\repeat percent 4 {d:m}
			\repeat percent 4 {f1:m}
		}
		\repeat volta 2 {
			\repeat percent 4 {f1:m}\break
			\repeat percent 4 {des:7}\break
			\repeat percent 4 {d:m}\break
			\repeat percent 4 {f1:m}
		}
		%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÆ’Ã‚Â¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat percent 3 {r1}
r2 r4 f8-- f-.
\repeat volta 2 {
r2 aes8( bes)-. bes4->~
bes4. aes8( bes c)-. es,( f)-.
r1 r2 r4 f8-- f-.
r2 aes8( bes)-. bes4->~
bes4. aes8( bes c)-. es,( f)-.
r1 r2
c'8( es8)-. c( es)-. \bar "||" f,4.-^ f8->~ f2
r2 c'8( es8)-. c( es)-. f,4.-^ f8->~ f2
r1
r1 r1 r1
r2 r4 f8-- f-.
}\break
\repeat volta 2 {
s1^"Solos" \repeat unfold 15 {s}}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"