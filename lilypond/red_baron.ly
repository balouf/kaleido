\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Red Baron" 
 	composer = "B. Cobham"
 	tagline = ""
}

accords = \chords {
\repeat volta 2 {\repeat unfold 7 {
	a2:m7 d:7
	}
s8. g16~ s2~ s8 fis
s1
}}


staffViolon = \new Staff {
%	\set Staff.instrumentName = "Bb"
	\time 4/4
	\key a \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c'' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
r4 r8. d,16 g a8 a16~ a a8 a16
c8 b16 a b c a8~ a4 r8 a'16-> a,
r4 r8. d,16 g a8 a16~ a a8 a16
\tuplet 3/2 {dis8 e c16 b} \tuplet 3/2 {a8 dis e} \tuplet 3/2 {c16 b a8 dis} \tuplet 3/2 {e8 c16 b a8}
r4 r8. d,16 g a8 a16~ a a8 a16
c8 b16 a b c a8~ a4 a16 c8 d16
dis e8 a16~ a e8 a,16 c8 \tuplet 3/2 {a16 g e} dis16 c' b a
b a g a'->~ a2.
r2. r8 a16-> a,
}
}}

theme = \staffViolon

\include "utils/books.ly"