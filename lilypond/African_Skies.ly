% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.12.3"
\include "utils/AccordsJazzDefs.ly"
#(set-global-staff-size 22)
#(set-default-paper-size "a4")
\paper { indent = 0\cm} 


\header {
	title = "African Skies" 
 	composer = "Michael Brecker"
 	tagline = ""

}


accords = \chords {
%	\set chordNameExceptions = #chExceptions
	s2.
	f:m7 s s s
	f:m7 s s s
	\repeat percent 4 {f:m7}
	des4/es d:m7.11+ des:6.9 des2.:6.9
	des8:9+/f es4:9+/g aes8:maj7 es/g ges:maj7
	bes4./d des:maj7
	aes4/c des8 aes4./es ges/e f:m7 des8/ges b4/g c8:7.9-.5- f4:m7  s2.
	aes/c s4. a:9+/b aes2.:9+/c s4. c:7.5-.9-
	des:9+ aes/e e2.:maj7 bes4.:m7.5- c/es
	aes/a aes/c des aes/es e4:maj7 f2:m7
	bes4:m7.5- es8:6 a8.:m7.5- aes/e c2.:m7.9-.5-
	s4.
	f2.:m7 s s s
	f:m7 s s s
	\repeat unfold 3 {
	\repeat percent 2 {bes:m7}
	\repeat percent 2 {aes:6.9}}
	\pageBreak
	\repeat volta 2 {
		\repeat unfold 2 {
	\repeat percent 4 {f:m7}
	\repeat percent 2 {c:7.5-.9-}
	\repeat percent 2 {f:m7}
		}
		\repeat percent 4 {aes:maj7}
		\repeat percent 2 {aes/fis}
		s16 bes8.:7.5-.3- es:6 a:7.3-.5- aes8/e
		s2.
	}
	\repeat volta 2 {
	des4/es d:m7.11+ des:6.9 des2.:6.9
	des8:9+/f es4:9+/g aes8:maj7 es/g ges:maj7
	bes4./d des:maj7
	aes4/c des8 aes4./es ges/e f:m7 des8/ges b4/g c8:7.9-.5- f4:m7  s2.
	}
	\repeat unfold 3 {
	\repeat percent 2 {bes2.:m7}
	\repeat percent 2 {aes2.:6.9}
	}
}

staffViolon = \new Staff {
	\time 6/8
	\tempo 4 = 92 
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	#(set-accidental-style 'modern-cautionary)
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
r4. r4 r16 d
\mark \markup {\box "A"}
\bar "||" 
bes' d c8 bes16 g d8 f4
r4. r4 r16 c'
bes d c8 bes16 g d8 f16 g~ g8
r4. r16 c, d f g bes
c d c8 bes16 g d8 f d~ d4. r8. f16 g bes
c d cis8 aes16 f d8 bes'16 g~ g8~ g4. r \bar "||"
R2.*3
r4. r4 r16 d
\mark \markup {\box "B"}
\bar "||" 
bes' d c8 bes16 g d8 f4
r4. r4 r16 c'
bes d c8 bes16 g d8 f16 g~ g8
r4. r16 c, d f g bes
c d c8 bes16 g d8 f d~ d4. r8. f16 g bes
c d cis8 aes16 f d8 bes'16 g~ g8~ g4. r4 r16 f
\mark \markup {\box "C"}
\bar "||"
bes8 f16 c' bes8 r16 c8 d f16
bes,4. r4 r16 f bes8 f16 c' bes8 r16 f8 d c16
bes8 c4~ c r16 f
bes8 f16 c' bes8~ bes16 c8 d f16
bes,8 c4~ c r16 bes
cis4 fis,16 d a'8. d,16 g d
f4. r4 r16 f
bes8 f16 c' bes8 r16 c8 d f16
bes,4 c16 d c4.
bes16 cis8 ges16 a8
f16 a8 d,16 f8~ f2.
\time 3/8
r4 r16 d
\bar "||"
\time 6/8
\mark \markup {\box "D"}
bes' d c8 bes16 g d8 f4
r4. r4 r16 c'
bes d c8 bes16 g d8 f16 g~ g8
r4. r16 c, d f g bes
c d c8 bes16 g d8 f d~ d4. r8. f16 g bes
c d cis8 aes16 f d8 bes'16 g~ g8~ g4. r \bar "||"
\mark \markup {\box "E"}
R2.*4
g8 d'8. f16 c4.
d,8 g8. bes16 f8 d16 c~ c8
g'8 d'8. f16 bes,4. r2.
g8 d'8. f16 c4.
d,8 g8. bes16 f8 d16 c~ c8
g'8 d'8. f16 bes,8 bes16 c g8 r2.
\break
\mark \markup {\box "Solos"}
\repeat volta 2 {
	\repeat percent 4 {s2.}
	\repeat percent 2 {s2.}
	\repeat percent 2 {s2.}
	\break
	\repeat percent 4 {s2.}
	\repeat percent 2 {s2.}
	\repeat percent 2 {s2.}
	\break
	\repeat percent 4 {s2.}
	\repeat percent 2 {s2.}
r16 <<fis[ bes es>> r8 <<f,] a d>> r16 <<f,[ a d>>
r8 <<f,~] bes~ d~>> <<f,2. bes d>>}
\break
\repeat volta 2 {
	bes16 d c8 bes16 g d8 f4
r4. r4 r16 c'
bes d c8 bes16 g d8 f16 g~ g8
r4. r16 c, d f g bes
c d c8 bes16 g d8 f d~ d4. r8. f16 g bes
c d cis8 aes16 f d8 bes'16 g~ g8~ g4. r
}
\break
\repeat unfold 2 {\repeat percent 2 {s2.}}
g8 d'8. f16 c4.
d,8 g8. bes16 f8 d16 c~ c8
g'8 d'8. f16 bes,4. r2.
g8 d'8. f16 c4.
d,8 g8. bes16 f8 d16 c~ c8
g'8 d'8. f16 bes,8 bes16 c g8 r2. \bar"|."
}
}


theme = {\transpose c' bes {\staffViolon}}

\include "utils/books.ly"