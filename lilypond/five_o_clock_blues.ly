% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.1"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Five o'clock blues" 
 	composer = "B.L."
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {s1 s4 s1 s4}
\repeat volta 2 {
f1 s4 s1 s4 s1 s4 s1 s4
\break
bes1:7 s4 s1 s4
f1:7 s4 s1 s4
\break
f1 s4 fis1 s4
g1:m7 s4 c1:8 s4
}
}


sopran = \new Staff {
	\time 5/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {r1 r4 r1 r4}
\break
\repeat volta 2 {
c'8 f r bes, c2 bes4
f8 f' r4 c8 a bes2
f8 f' r bes, c2 a4
g8 e' r4 d8 bes c2
bes8 bes' r e, f2 e4
bes8 f' r4 c8 bes c2
f,8 f' r bes, c2 bes4
g8 d' r4 bes8 g~ g2
c8 e r c r2.
cis8 f r cis r f r2
d8 f r d r2.
es8 g r es r g r2
}
	}
}

	
basse = \new Staff {
	\time 5/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
  f4.-> 8 bes4-> b c f,-> a bes b8-> c4.
}
\repeat volta 2 {
  f,4.-> 8 bes4-> b c f,-> a bes b8-> c4.
  f,4.-> 8 bes4-> b c f,-> a bes b8-> c4.
  bes4.-> 8 es4-> e f bes,-> d es e8-> f4.
  f,4.-> 8 bes4-> b c f,-> a bes b8-> c4.
  r2 r8 <e, a c f>8 8 r8 8 r8
  r2 r4 r8 <f bes des ges>8 8 r8
  r2 r8 <f bes d a'>8 8 r8 8 r8
  r2 r4 r8 <e bes' des aes'>8 8 r8  
}
	}
}


theme = <<
\sopran
\basse
>>


\include "utils/books.ly"
