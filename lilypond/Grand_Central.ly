% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Grand Central" 
 	composer = "John Coltrane"
 	tagline = ""

}


accords = \chords {
  r1
  \repeat volta 2{
  s4. f4:m7 g:m7.5- aes8:maj7
  bes2:m9 es:7 aes:m9 des:7 ges:m9 b:7 s2 bes4.:m9 b1:9.11+ s8
  }
  \alternative {{s2 bes4.:m9 b1:9.11+ s8}{s2 bes4.:m9 bes1:m6.9 s8}
  }
  fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7
  bes:m7 e:7 a:maj7 c:7
  s4. f4:m7 g:m7.5- aes8:maj7
  bes2:m9 es:7 aes:m9 des:7 ges:m9 b:7 s2 bes4.:m9 b1:9.11+ s8
  s2 bes4.:m9 b1:9.11+ s8 s2 bes4.:m9 b1:9.11+ s8 bes2:m9 bes:m g:m7.5- c:7.9-
  \repeat volta 2 {
  f1:m7 bes2:m9 es:7 aes:m9 des:7 ges:m9 b:7 bes2:m9 s4. b1:9.11+ s8
}
  \alternative {{bes2:m9 s4. b1:9.11+ s8}{bes2:m9 s4. bes1:m6 s8}}
    fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7 fis2:m7 b:7
  bes:m7 e:7 a:m7 c:7
  f1:m7 bes2:m9 es:7 aes:m9 des:7 ges:m9 b:7 bes2:m9 s4. b1:9.11+ s8
  bes2:m9 s4. b1:9.11+ s8 bes2:m9 s4. b1:9.11+ s8 bes1:m9 g2:m7.5- c:7.9-
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.markFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
g'8( aes g f e c e g
\repeat volta 2 {
 \mark \default
f4-.) r r r8 f( <f c'>2 bes
<bes es,> aes <aes des,> fis4. <f c'>8->~ <f c'>1)
r8 <es bes'>8( <des aes'> <c g'> <ces ges'>  <des aes'> <es bes'> <e des'>
}
\alternative {
{<f c'>1) g8( aes g f e c e g)}
{<f c'>1\repeatTie r8 <es bes'>( <des aes'> <c g'> <ces ges'>4-.) r8 fis\laissezVibrer}
}
\break \bar "||"
\mark \default
<<
	\voiceOne {
	  b4.( cis8 dis gis,4.~ gis2.) r8 fis
	  b4. cis8 r cis( dis gis,~ gis2.) r8 fis\laissezVibrer
	  b4. cis8 dis gis,4.~ gis2
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	e4.( dis8~ dis2 e8 dis e dis~ dis2)
	e4.( dis8~ dis2 e8 dis e fis gis4 fis)
	e4.( dis8~ dis2 e4. dis8)
	}
>>
\oneVoice
r8 cis'( b fis^"R" f des es f e es d fis e cis b a c bes) r4
\break \bar "||"
\mark \default
f'4-. r r r8 f <f c'>2 bes
<bes es,> aes <aes des,> fis4. <f c'>8->~ <f c'>1
r8 <es bes'>8( <des aes'> <c g'> <ces ges'>  <des aes'> <es bes'> <e des'> <f c'>1)
r8 <es bes'>8( <des aes'> <c g'> <ces ges'>  <des aes'> <es bes'> <e des'> <f c'>1)
r8 <es bes'>8( <des aes'> <c g'> <ces ges'>  <ges des'> <aes es'> <a ges'>) <bes f'>4-.^"Fin" r r2^"Piste envol" r1
\break \bar".|:-||"
\mark \default
\improvisationOn
\repeat volta 2 {r1 r r r r2 c'4. c8~ c1}
\alternative {{r2 c4. c8~ c1}{r2 c4. c8~ c1}}
\break \mark \default
r1 r r r r r r r
\break \mark \default
r r r r r2 c4. c8~ c1 r2 c4. c8~ c1 r2 c4. c8~ c1
c4-> r r2 \mark \markup {"DC"} r1 \bar "|."
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 256
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"