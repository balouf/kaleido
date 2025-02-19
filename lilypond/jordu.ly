% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Jordu" 
 	composer = "Duke Jordan"
 	tagline = ""

}


accords = \chords {
	s1
	\repeat volta 2 {
	d2:7 g4.:7 c8:m
	s1
	f2:7 bes4.:7 es8:maj7
	es1:maj7
	d2:7 g4.:7 c8:m
	s1
	aes:7}
	\alternative {{aes:7}{aes:7}}
	g2:7 c:7 f:7 bes:7 s4 es:7 aes2:7 des1:maj7
	f2:7 bes:7 es:7 aes:7 des:7 ges:7 g1:7
	d2:7 g4.:7 c8:m
	s1
	f2:7 bes4.:7 es8:maj7
	es1:maj7
	d2:7 g4.:7 c8:m
	s1
	aes:7 aes:7
	% Solos
	\repeat volta 2 {
	d2:7 g:7.9+  c1:m
	f2:7 bes:7 es1:maj7
	d2:7 g:7.9+  c1:m
	aes:7 aes:7}
	g2:7 c:7 f:7 bes:7 s4 es:7 aes2:7 des1:maj7
	f2:7 bes:7 es:7 aes:7 des:7 ges:7 g1:7.9+
	d2:7 g:7.9+  c1:m
	f2:7 bes:7 es1:maj7
	d2:7 g:7.9+  c1:m
	aes:7 aes:7
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 120
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here
\compressEmptyMeasures
r8
<<
	\voiceOne {g\( c d es f g es}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	g es d c g bes c}
>>
\repeat volta 2 {
<fis a,>2\) <f b,>4. <c es>8
r8 
<<
	\voiceOne {g\( c d es f g bes}
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	g es d es f es d}
>>
<a' c,>2\) <aes d,>4. <g es>8
r8
<< \voiceOne {
g,\( c d es f g es
}
\new Voice {\override NoteHead.color = #red \voiceTwo  g es d c g bes c}
>>
<fis a,>2\) <f b,>4. <c es>8
r2 \tuplet 3/2 {<bes es>16( <c f> <bes es>} <g c>8 <bes es>8[ <ges c>~]) <ges c>1
}
\alternative {
	{r8<<
	\voiceOne {g\( c d es f g es\)}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	g es d c g bes c}
>>
}
	{r2 r8 g''-^ r g~->}
}
\bar "||" g4 b,8(\mordent a bes4) g'8( e
f4) a,8(\mordent g aes4) f'8( d
es4) g,8(\mordent f ges4. e8 f2)
r8 f'-^ r f~->
f4 a,8(\mordent g aes4) f'8( d
es4) g,8(\mordent f ges4) es'8( c
des4) f,8(\mordent es e4. d8 dis8-.)
<<
	\voiceOne {g,\( c d es f g es}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	g es d c g bes c}
>>
\bar "||"
<fis a,>2\) <f b,>4. <c es>8
r8 
<<
	\voiceOne {g\( c d es f g bes}
	\new Voice {
	\override NoteHead.color = #red
	\voiceTwo
	g es d es f es d}
>>
<a' c,>2\) <aes d,>4. <g es>8
r8
<< \voiceOne {
g,\( c d es f g es
}
\new Voice {\override NoteHead.color = #red \voiceTwo  g es d c g bes c}
>>
<fis a,>2\) <f b,>4. <c es>8
r2 \tuplet 3/2 {<bes es>16( <c f> <bes es>} <g c>8 <bes es>8[ <ges c>~])
<ges c>1~ <ges c>2 r \break
\repeat volta 2 {\repeat unfold 8 {s1}}
\repeat unfold 8 {s} \bar "||" \break
\repeat unfold 8 {s} \bar "|."
	}
}


\include "utils/books.ly"