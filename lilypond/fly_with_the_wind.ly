% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Fly with the Wind" 
 	composer = "McCoy Tyner"
 	tagline =  ""

}


accords = \chords {
  \repeat volta 2 {
  c2:sus4.7 f:sus4.7 bes:m7 es:13.9-
  aes:maj7 c:7.9+ f:m7 bes:sus4.7
  es:maj7 aes:sus4.7 des:maj7 g:13.9-
  c4.:sus4.7 des:maj7.11+ s4 s1
  \alternative{
    {c4.:sus4.7 des:maj7.11+ s4 c4.:sus4.7 des:maj7.11+ s4}
    {c4.:sus4.7 des:maj7.11+ s4 s1}}
  }
  c4.:sus4.7 es4.:sus4.9 s8 f2:sus4.7 s8 g4:m7 c2.:sus4.7 s2 s1
  f4.:sus4.7 aes:6 s4 s4. es8:sus4.9 f2:sus4 s1 s1
  \repeat volta 2 {
    f2 g es f s g des es f g es f s g des es}
  c2:sus4.7 f:sus4.7 bes:m7 es:13.9-
  aes:maj7 c:7.9+ f:m7 bes:sus4.7
  es:maj7 aes:sus4.7 des:maj7 g:13.9-
  c4.:sus4.7 des:maj7.11+ s4
  c4.:sus4.7 des:maj7.11+ s4
  \repeat volta 4 {
  c4.:sus4.7 des:maj7.11+ s4
  c4.:sus4.7 des:maj7.11+ s4}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 168
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\repeat volta 2 {
c'4. 8~8 d es f 
c2 \trio{r4 g' es} c2
\trio{r4 aes' f} es c8 bes~2
bes4. 8~8 c des es c4 aes8 8~8 bes b aes
g4. 8~2~1
\break
\override NoteHead.font-size = -3 % Reduce size
\override Stem.length = #5 % Adjust stems for better readability
\clef bass
\alternative {
{c,,,8 g' es' des,~8 aes' f' aes, c, g' es' des,~8 aes' f' aes,}
{c,8 g' es' des,~8 aes' f' c, r4^"N.C." g''8 bes f g es c}
}
}
\break
\revert NoteHead.font-size  % Restore normal size
\revert Stem.length
\clef treble
g''' f es f~8 es c es~8 c bes g bes4 c~2
\override NoteHead.font-size = -3 % Reduce size
\override Stem.length = #5 % Adjust stems for better readability
\clef bass
r8^"N.C." c, bes g~8 f es bes~8 8 c4 
\break
\revert NoteHead.font-size  % Restore normal size
\revert Stem.length
\clef treble
f''8 es c es~8 c bes4 r r8 bes c2
\override NoteHead.font-size = -3 % Reduce size
\override Stem.length = #5 % Adjust stems for better readability
\clef bass
bes,8 es c f es4 bes8 c f, g es c~2
\break
\revert NoteHead.font-size  % Restore normal size
\revert Stem.length
\clef treble
\repeat volta 2 {
g'''2~8 f es f~1~1 r2 f8 es des f~1~1 r r2 a,8 b f' g\laissezVibrer
}
c,4. 8~8 d es f 
c2 \trio{r4 g' es} c2
\trio{r4 aes' f} es c8 bes~2
bes4. 8~8 c des es c4 aes8 8~8 bes b aes
g4. 8~2~1
\break
\override NoteHead.font-size = -3 % Reduce size
\override Stem.length = #5 % Adjust stems for better readability
\clef bass
\repeat volta 4 {
c,,,8^"Repeat and Fade" g' es' des,~8 aes' f' aes, c, g' es' des,~8 aes' f' aes,}
	
	}
}

\include "utils/books.ly"
