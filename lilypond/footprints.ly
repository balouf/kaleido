% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Footprints" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
	\repeat percent 8 {c1.:min
	}
	\repeat volta 2
	{
		c1.:m s s s
		f:min s c:min s
		fis2.:m7.5- b:7.9+ e:7.9+ a:7.5+.9+
		c1.:min s
	}
	\repeat volta 2
	{
		c1.:m s s s
		f:min s \break c:min s
		fis2.:m7.5- b:7.9+ e:7.9+ a:7.5+.9+
		c1.:min s
	}
}

theme = \new Staff {
	\time 6/4
	\tempo 4 = 176 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat percent 8 {r1.} \break
\repeat volta 2
{
	<bes' f>4-- <bes f>4-- <bes f>4-- <bes f>( <c g> <a e>
	<bes f>4. <a e>8 <g d> <f c> <d a>2 <c g>4-.)
	\repeat unfold 2 {r2 r8 <d a>~^\markup {(opt.)} ( <d a>2 <c g>4-. )}
	<bes' f>4-- <bes f>4-- <bes f>4-- <bes f>( <c g> <d aes>
	<es bes>4. <d aes>8 <c g> <bes f> <g d>2 <f c>4-.)
	<bes f>4.( <a e>8 <g d> <f c> <d a>2 <c g>4-.)
	r2 r8 <d a>~^\markup {(opt.)} ( <d a>2 <c g>4-. )
	<b' fis>( <b fis> <b fis> <b f> <d a> <g, d>
	<bes f>2~ \tuplet 3/2 {<bes f>8 <a e> <aes es>} <g d>4 <c g>~ <c g>8 <g d>16 <ges des>)
	<f c>1.~ <f c>
}
% Solo
\break
\repeat volta 2
{
	\repeat percent 4 {s1.}
	\repeat percent 2 {s}
	\repeat percent 2 {s}
	\repeat unfold 2 {s}
	\repeat percent 2 {s}
}
	}
}

\include "utils/books.ly"