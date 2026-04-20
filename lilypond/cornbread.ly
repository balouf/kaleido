% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Cornbread" 
 	composer = "Lee Morgan"
 	tagline = ""

}


accords = \chords {
  \partial 4 s4 \repeat percent 4 {f1:m7}
  \repeat percent 4 {f1:m7} 
  \repeat percent 2 {f1:m7} \repeat percent 2 {c1:7} 
  \repeat percent 2 {f1:7} \repeat percent 2 {bes1:7}
  \repeat unfold 2 {f2:7 f:7/a bes1:7}
  f2:7 d:7 g:7 c:7 \repeat percent 2 {f1:m7}
}

theme = \new Staff {
	\time4/4
	\tempo  4=166 
	\set Staff.midiInstrument = "trumpet"
	\key f \minor
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
\partial 4 \repeat unfold 4 {c8 e f4 c'8 e,~8 r} c e
\clef treble \bar "||"
f' f es f~f f aes f bes b c es~8 f es ces 
\trio {bes aes f}~8 es~8 f <aes d>8 8 \trio {bes aes f}~8 es~8 f <aes d>8 8 \break
f f es f~f f aes f bes b c es~8 f es c
\trio {<dis fis> <e g> <c e>~}2. <bes dis>8 <c e>8 8 8 r2 \break
r4 <c f,>8 <c f> <es bes'> <d a'>4 <a f'>8 r1 r8 aes' \trio {g16 aes g} f8 g f4 aes8 r1 \break
r4 <a c,> <f a,>8 <a c,> r <g c,> <e a,> <f bes,> r <d g,> r2
r4 <a' c,> <f a,>8 <a c,> r <g c,> <e a,> <f bes,> r <d g,> r2 \break
r4 <a' c,> <f a,>8 <a c,> r <g c,> f es4 c b8 bes aes
\trio {bes aes f~} 8 es~8 f <aes d>8 8 \trio {bes aes f~} 8 es~8 f <aes d>8 8 
\fine
	}
}
\include "utils/books.ly"
