% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.1"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Five o'clock blues" 
 	composer = "Kaleido (BL)"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {f1:m7 s4 s1 s4}
\repeat volta 2 {
f1:m7 s4 s1 s4 s1 s4 s1 s4
\break
bes1:m7 s4 s1 s4
f1:m7 s4 s1 s4
\break
f1:sus4.7 s4 fis1:sus4.7 s4
g1:sus4.7 s4 c1:8 s4
}
}


sopran = \new Staff {
	\time 5/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key f \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
  r8 <f aes c>4.
  r8 <g bes d>4. <g bes d>4
  r8 <aes c ees>4. <aes c ees>4
  r8 <g bes d>4.
}
\break
\repeat volta 2 {
  f8 r4. r4. ces'8 bes aes
  f2. f8 ees c4
  f8 r4. r4. ces'8 bes aes
  f2. g8 aes a4

  bes8 r4. r4. ces8 bes aes
  f2. f8 ees c4
  f8 r4. r4. ces'8 bes aes
  f2. aes8 bes4 b8

  c8 f4 c8
  r8 <ees, bes' c>8 <ees bes' c>4 <ees bes' c>
  cis'8 fis4 cis4 fis8
  r8 <e, b' cis>8 <e b' cis>4
  d'8 g4 d8
  r8 <f, c' d>8 <f c' d>4 <f c' d>4
  ees'8 aes4 ees4 aes8^"fine"
  r8 <e, bes' dis>8 <e bes' dis>4
}
	}
}

	
basse = \new Staff {
	\time 5/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key f \minor
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
  f4.-> aes8 bes2-> c4 f,2-> bes4 b8-> c4.
}
%\repeat volta 2 {
%  f,4.-> aes8 bes2-> c4 f,2-> aes4 b8-> c4.
%  f,4.-> aes8 bes2-> c4 f,2-> aes4 b8-> c4.
%  bes4.-> des8 ees2-> f4 bes,2-> des4 e8-> f4.
%  f,4.-> aes8 bes2-> c4 f,2-> bes4 b8-> c4.
%  r2 r8 <e, a c f>8 8 r8 8 r8
%  r2 r4 r8 <f bes des ges>8 8 r8
%  r2 r8 <f bes d a'>8 8 r8 8 r8
%  r2 r4 r8 <e bes' des aes'>8 8 r8  
%}
	}
}


theme = <<
\sopran
\basse
>>


\include "utils/books.ly"
