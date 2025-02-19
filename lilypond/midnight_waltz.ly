% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 23)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Midnight Waltz" 
 	composer = "Cedar Walton"
 	tagline = ""

}


accords = \chords {
	c2. g:m c g:m c2. g:m c g:m c g:m c g:m c g:m c g:7.9-
	\repeat volta 2 {
	c:7 g:m c:7 g:m c:7 g:m c:7 g:m
	f:7 c:m f:7 c:m c:7 g:m c:7 bes4:7 a2:7
	es2.:m aes:7 d:7.9+ g:7.9+ c:7 g:7.9+ c:7 g:7.9+}
	\repeat volta 2 {
	\repeat percent 4 {c:7} \repeat percent 4 {c:7} \break 
	f:7 fis:7 f:7 f:7.9- c:7 b:7 bes:7 a:7 \break 
	es:m aes:7 d:m g:7.9+ c:7 a:7.9+ d:m g:7.9+
}
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxième
}

theme = \new Staff {
	\time 3/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<g c e>2. <a bes d f> <b c e g> <a bes d f>
<g c e>4 <g c e>2 <a bes d f>2. <e g>4 <g c e>8 <f bes d>~ <f bes d>4~ <f bes d>2.
\break 
<g c e>2. <a bes d f> <b c e g> <a bes d f>
<g c e>2. <a bes d f> <b c e g> <f b e aes>2 g'4-^
\break 
\repeat volta 2
{
	\tuplet 3/2 {<f d'>8->( <e c'> <d bes'>~} <d bes'>4 <c a'>-.)
	\tuplet 3/2 {<d bes'>8->( <c a'> <bes g'>~} <bes g'>4 <a f'>-.)
	<bes g'>8->( <g e'>~ <g e'>4 <bes g'>-.)
	<a f'>8->( <f d'>~ <f d'>4 <a f'>-.)
	<g e'>8->( <bes g'>~ <bes g'>2~ <bes g'>2.~ <bes g'>~ <bes g'>2) r4
	\bar "||"
	r8 <g es'>4.-- <a f'>4-.
	r8 <bes g'>4.-- <c a'>4-.
	r8 <d bes'>4.-- <c a'>4-.
	r8 <bes g'>4.-- <a f'>4-.
	<g e'>8->( <bes g'>~ <bes g'>2~ <bes g'>2.~ <bes g'>~ <bes g'>)
	\bar "||"
	r8^"X3 to finish" <ges es'>4.-- <aes f'>4-.
	\tuplet 3/2 {<bes ges'>8->( <aes f'> <ges es'>~} <ges es'>2)
	r8 <aes f'>4.-- <bes g'>4-.
	<b aes'>8( <bes g'>) r <aes f'> r c(
	<g e'> <bes g'>)~ <bes g'>2~ <bes g'>2.~ <bes g'>~ <bes g'>2 g'4^"1X"-^
}
\break 
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {\repeat unfold 24 {s2.}}
	}
}


\include "utils/books.ly"