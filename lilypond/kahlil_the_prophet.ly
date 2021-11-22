% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Kahlil the Prophet" 
 	composer = "Jackie McLean"
 	tagline = ""

}


accords = \chords {
  ges2:maj7.5-/f f:7.5-/es f:7.9+/c es/b s1
  ges2/g g/aes f1:7.5+.9+
  \repeat volta 2 {
  f2:m/c b4.:13 bes8:13 s1 aes:13 s
  cis2 e4. fis8:7.5- s1 aes:7.5- s
  s2 f:7 es:sus4 es/d s f:7 es:sus4 es/d
  s aes:7sus4 g:7sus4 fis:7.5- a1:maj7 s
  aes2:7sus4 g:7sus4 fis:7sus4 c:7sus4 a1:maj7
  }
  \alternative {{s}{s}}
  f:6/c s ges2/g g/aes f1:7.5+.9+ s
  \repeat volta 2 {
    f:m s s s s s s s
    fis:m s s s s s s s
    g:m s s s s s s s
}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 264
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
<bes f'>2^"Intro" <a b> <a! aes'> <bes g'>~ <bes g'>\fermata r2
bes8 b aes ges c a d f <des es>2\fermata r
\break
\repeat volta 2 {
f,4-. r <cis' dis>-. r8 <c d>~ <c d>1 r2 es8 cis d e f <ges a> r4 r2
fis,4-. r <cis' dis>-. r8 <c e>~ <c e>1 r2 aes'8 a ges des~ des c r4 r r8
<< \voiceOne {
a' bes c des es es des c bes
es des c bes es des c bes
a bes c des es des c bes
es des c bes es des c bes
   }
   \new Voice {\voiceTwo \override NoteHead #'color = #red
r8 bes, c des es a,4-. r aes-. r g-. r
bes8 c des es a,4-. r aes-. r g-. r

   }
>>
\oneVoice
<g' c>8 <aes des> <bes es> <b des> <bes c>4 <aes bes>-.
<g a>8 <aes bes> <bes des> <aes bes> <g a> <g> <f> <e gis>~ <e gis>1~ <e gis>2. r4
<g c>8 <aes des> <bes es> <b des> <bes c>4 <aes bes>-.
<g a>8 <aes bes> <bes des> <aes bes> <g a> <g> <f> <e gis>~ <e gis>1~

}
\alternative {{<e gis>2. r4}{<e gis>2.\repeatTie <fis gis>8 <f a>~}}
<f a>1~ <f a>2 r
bes,8 b aes ges c a d f <des es>1~ <des es>2 r
\break
\repeat volta 2 {
\repeat unfold 8 {s1} \break
\repeat unfold 8 {s1} \break
\repeat unfold 8 {s1}
}

\bar "|."
	}

}


\include "utils/books.ly"