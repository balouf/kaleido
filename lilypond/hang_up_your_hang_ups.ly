% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Hang up your Hang Ups" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
e1:m s s s
  }
  \repeat unfold 16 {s}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 112 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {
\repeat percent 3 {a'8->^"Guit." g-> e16-> e8.-! e16-> e-! e-! e-! e-! e8.}
a8-> g-> e16-> e8.-! e8-> cis\accent\staccato d\accent\staccato cis\accent\staccato
}
des'16-^ des-^ des-^ b-^ r4 r2 e16-^ e-^ e-^ d-^ r4 r2 
des16-^ des-^ des-^ b-^ r8 e16-^ e-^ e-^ d-^ r8 r4 
<bes cis>16-> <b e>8.-^ <d g>16-> <b e>8.-^ r2
\repeat volta 2 {
<cis fis>8. <b e>16~ <b e>2.~ <b e>4. <a d>8.-! <b e>8.-! <d g>4
<g, cis>8 <cis fis>4 <g cis>8 <b e>4 <a d>16 <b e> r8
<fis cis'>4 <e b'>4. <e b'>8 <e cis'> <e e'> 
<b' fis'>16 <a f'>8-. <gis e'>16~ <gis e'>2.~
<gis e'>4 r8 <a d>8.-! <b e>-! <d g>4 
<g, cis>8 <cis fis>4 <g cis>8 <b e>4 <a d>16 <b e> r8
r <b g'> <g e'>2 r4
cis4 d dis e8. g16~ g8 e-. r4 r2
<a, cis>4 <bes d> <b dis> <c e>8. <d g>16~ <d g>8 <b e>-. r4 r2
<a cis>4 <bes d> <b dis> <c e>8. <d g>16~ <d g>8 <b e>-. r4 r r8. <a cis>16->~
<a cis>4 <bes d> <b dis> <c e>8. <e a>16~ <e a>8 <d g>-. e16 b a b d a b d-^ r4
<<
	\voiceOne {
	  r8 g-. e16 b a b d a b d-^ r4
	r8 g-. e16 b a b d a b d-^ r4
	r8 g-. e16 b a b d a b d-^ r4
	}
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	des16-^ des-^ des-^ b-^ r4 r2
	e16-^ e-^ e-^ d-^ r4 r2
	des16-^ des-^ des-^ b-^ r8
	e16-^ e-^ e-^ d-^ r8 r4}
>>
\oneVoice
<bes cis>16-> <b e>8.-^ <d g>16-> <b e>8.-^ r2
<cis fis>8. <b e>16~ <b e>2.~ <b e>4. <a d>8.-! <b e>8.-! <d g>4
<g, cis>8 <cis fis>4 <g cis>8 <b e>4 <a d>16 <b e> r8
<fis cis'>4 <e b'>4. <e b'>8 <e cis'> <e e'> 
<b' fis'>16 <a f'>8-. <gis e'>16~ <gis e'>2.~
<gis e'>4 r8 <a d>8.-! <b e>-! <d g>4 
<g, cis>8 <cis fis>4 <g cis>8 <b e>4 <a d>16 <b e> r8
\mark \markup {\musicglyph "scripts.coda" }
<d g>16 <cis e> r8 <cis d>16 b r8 r2
<bes d>16-> <bes d> <a cis> <aes c> r4 r2
<es' g>16-> <es g> <d fis> <des f> r4 r2
<aes c>16-> <aes c> <a cis> <bes d>-> r8 <aes c>16-> <aes c> <a cis> <bes d>-> r8 r4
<aes c>16-> <aes c> <a cis> <bes d>-> r8 <aes c>16-> <aes c> <a cis> <bes d>-> r8 r4
\repeat percent 3 {r1^"Solos (ad vomitum)"}
<d g>16 <cis e> r8 <cis d>16 b r8 r4 <g b>16 <b d> r8

}
\mark \markup {\musicglyph "scripts.coda" }
<d g>16 <cis e> r8 <cis d>16 b r8 b16 a g e a g d e
\bar "|."
	}

}

\include "utils/books.ly"
