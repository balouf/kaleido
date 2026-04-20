% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Loran's Dance" 
 	composer = "Idris Muhammad"
 	tagline = ""

}

accords = \chords {
f1:m7 s ges:maj7 s
\repeat unfold 3 {\repeat volta 2{f1:m7 s ges:maj7 s}}
\repeat volta 2 {\repeat unfold 4 {bes2 ces}}
}

theme = \new Staff {
	\time4/4
	\tempo  4=80 
	\set Staff.midiInstrument = "trumpet"
	\key f \minor
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c { 	
 % Type notes here 
\override Score.RehearsalMark.stencil = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)
\compressEmptyMeasures
\mark "Intro"
\repeat percent 2 {f,8 8 r16 f f8 r8. c'16 f c f8}
\repeat percent 2 {ges,8 8 r16 16 8 r8. des'16 ges des ges8}
\clef treble
\mark \default
\repeat volta 2 {
r4 \trio {c'8 des es} \trio {des c bes} aes8 bes16 c~2~4. bes8
aes8. f16~4~2~1} \break
\repeat volta 2 {
\twoV \black #darkred
{es'8 8 r16 d8 16~ \trio{d8 c bes} \trio {aes8 bes c~}2~4. bes8 aes8. f16~4~2~1} 
{c'8 8 r16 bes8 16~\trio {8  aes g} \trio { f8 g aes~} 2~4. g8 f8. des16~4~2~1}
}
\break
\repeat volta 2 {
\twoV #darkred 
{r4 r16 aes' bes c~c bes c des~16 c des es~es des es f~f es f g~g f g aes~16 g aes c~
c2. 16 bes8 aes16~16 f8 es16~2.} 
{r4 r16 f, g aes~16 g aes bes~16 aes bes c~c bes c des~16 c des es~es des es f~f es f aes~
aes2. 16 f8 es16~16 des8 bes16~2.} 
}\break
\mark \default
\clef bass
\repeat volta 2 {\repeat percent 4 {bes,,4 r16 bes' bes, ces~8 es ges r}}
\fine
	}
}
#(define raggedlast #f)
\include "utils/books.ly"
