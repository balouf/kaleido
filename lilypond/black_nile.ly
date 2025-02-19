% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Black Nile" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
		% \set chordNameExceptions = #chExceptions
	f1:m9
	ges:maj7
	es2..:m7
	f2:m7
	d:m7 s8
	bes1:13
	es:maj9
	e2:m9.5- s8
	a1:7.5+.9+
	s4.
	\repeat volta 2 {d1:m es:7sus4 d:m c2:m f:7.5+.9+ bes1:maj7}
	\alternative {
		{es:7sus4 d:m es:7sus4}
		{es:7sus4}
	}
	 d:m d:7.9+
	 g:m c:7 f2:m bes:7 es1:maj7
	 g:m c:7 f2:m bes:7 es:maj7 a:7.5+.9+
	 d1:m es:7sus4 d:m c2:m f:7.5+.9+ bes1:maj7
	 es:7sus4 d:m es:7sus4
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
	\repeat volta 2 {d1:m es:7sus4 d:m c2:m f:7.5+.9+ bes1:maj7 es:7sus4 d:m}
	\alternative {
		{es:7sus4}
		{d:7.9+}
	}
	 g:m c:7 f2:m bes:7 es1:maj7
	 g:m c:7 f2:m bes:7 es:maj7 a:7.5+.9+
	 d1:m es:7sus4 d:m c2:m f:7.5+.9+ bes1:maj7
	 es:7sus4 d:m es:7sus4
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 202
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r8^"Intro" g''4.-> c,2
f4.-> bes,8~ bes2
des4-. des8( c ) des es4 c8~
c bes4 a8~ a f r4
r8 g'4.-> c,2
f4.-> bes,8~ bes2
<ges bes>4-. <ges bes>8( <f a> <ges bes>
<f c'>4.^>)~ <f c'>1
\repeat volta 2 {
	a1^"Theme"
	r4 bes8( a bes c4.->)
	a1
	r4 bes8( a bes cis4.->)
	a4. d,8~ d4~ d8 a'16( bes)
}
\alternative {
	{a4-- g-. f-- d8( f)~ f1~ f4. g8->~ g2 }
	{a4-- g-. f-- d8( c)~}
}
c1 r2 r8 <bes' d>4.
\bar "||"
<a c>2 r8 <bes d>4.
<a c>2 r8 <bes d>4.
<aes c>4-. <aes c>8 <g bes> <aes c> <g bes>4.
<d g>2 r8 <bes' d>4.
<a c>2 r8 <bes d>4.
<a c>2 r8 <bes d>4.
<aes c>4-. <aes c>8 <g bes> <aes c> <g bes>4.
<d g>4. c'8~ c2 
\bar "||"
a1
r4 bes8( a bes c4.->)
a1
r4 bes8( a bes cis4.->)
a4. d,8~ d4~ d8 a'16( bes)
a4-- g-. f-- d8( f)~ f1~ f1
\break
\repeat volta 2 {s1^"Solos" s s s s s s}
\alternative {{s}{s}}\break 
s s s s s s s s \break 
s s s s s s s s
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

\include "utils/books.ly"
