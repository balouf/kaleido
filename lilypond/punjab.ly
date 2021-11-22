% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Punjab" 
 	composer = "Joe Henderson"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  g4.:maj7 a:maj7 b:maj7 c:maj7.5- s2
  g4.:maj7 a:maj7 b:maj7 c:maj7.5- s2}
  \repeat volta 2 {
  d1:maj7.13 s2 bes4.:13.9- ces1:maj7 s4
  g2:13  aes4.:maj7 f1:m9.5- bes:7.5-
  e:6.9.11+ s s s2 s4 s8 aes:maj7
  aes1:maj7 g:13 ges2:13 ces:maj7 e8:9 f:9 s2.
  \tuplet 3/2 {a4:13 aes:maj7 g:maj7} f2:13
  s f:sus9
  g4.:maj7 a:maj7 b:maj7 c:maj7.5- s2
  }
 \repeat volta 2 {
 d1:maj7 s2 bes:13.9- b1:maj7 aes:maj7 f:m7.5-
 bes:7 e:6.9.11+ s s s2 es:7.9-
 aes1:maj7 g:13 ges2:13 ces:maj7 f1:9
 f:sus9 s g2:maj7 a:maj7 b:maj7 c:maj7.5-
 }
 g4.:maj7 a:maj7 b:maj7 c:maj7.5- s2
  g4.:maj7 a:maj7 b:maj7 s2 c4.:maj7.5-
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 154 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()

\repeat volta 2 {
<< {
   d'8^"hrns" b r e cis4-. fis8 dis
   r a' e b r fis'4.->
}
  {
   b,,8 fis r cis' gis4-. dis'8 ais
   r e' b fis r b4.->
  }
>>
d8^"pn." b r e cis4-. fis8 dis r a' e b r fis'4.->
}
\repeat volta 2 {
 \mark \default
r4 \tuplet 3/2 {<fis b,>8 <b e,> <cis fis,>} <e a,>4-. <fis b,>8 <cis fis,>~ <cis fis,>1
r4 \tuplet 3/2 {<es, bes>8 <aes es> <bes fes>} <des aes>4-. r8 <es bes>

<<
{
bes4. aes8 g es~ es4~ es1~ es2
}\\
{
f4. es8 d bes~ bes4~ bes2. ces8 aes~ aes2
}
>>
\override Glissando.style = #'zigzag
r4 <bes' fes>8 <aes es>
<fis cis> <dis ais> r8 <fis cis> <dis ais>4-. <fis cis>8 <dis ais>
r <fis cis> <dis ais>2 \glissando <ais' e>8 <gis dis>
<fis cis> <dis ais> r8 <fis cis> <dis ais>4-. <fis cis>8 <dis ais>~ <dis ais>1
\break
\mark \default
r4 r8 es' bes'4 \tuplet 3/2 {aes8 g es}
b aes' r4 r8 aes ges es~
es4. des8 ges es des e, 
aes bes des es~ es4. b8
\tuplet 3/2 {fis'4 g fis} g2~ g4 r <f f,>4.^"hrns" <es es,>8
<< {
   d8 b r e cis4-. fis8 dis
   r a' e b r\mark \markup { \musicglyph "scripts.coda" } fis'4.->
}
  {
   b,,8 fis r cis' gis4-. dis'8 ais
   r e' b fis r b4.->
  }
>>
}
\break
\repeat volta 2 {
\mark \default
s1 s s s \break s 
s s s s s \bar "||" \break
\mark \default
s s s s \break s s s s
}
\break
\mark \markup { \musicglyph "scripts.coda" } 
d'8^"pn." b r e cis4-. fis8 dis r a' e b r fis'4.->
<< {
   d8^"hrns" b r e cis4-. fis8 dis
   r a' e b r fis'4.->-\fermata
}
  { 
   b,,8 fis r cis' gis4-. dis'8 ais
   r e' b fis r b4.->
  }
>> 
\bar "|."


}

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c

}

theme = \staffViolon

\include "utils/books.ly"