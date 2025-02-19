% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Armageddon" 
	subsubtitle = "Reprise avec intro"
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  \partial 2 s2
  e4.:7 es2:7 des2:7.11+ s8 s2
  ges4./c f2:7.11+.13- bes2:m7 s8 s2
  e4.:7 es2:7 des2:7.11+ s8 s2
  ges4./c f2:7.11+.13- bes2.:m7 s8
  ges1:7 s4 bes2.:m7 ges1:7 s4
  \repeat volta 2 {
    bes2.:m7 ges1:7 s4
    bes2.:m7 ges1:7 s4
    es2.:7 e1:7 s4
    es2.:7 ges1:7 s4
    bes2:m7 aes:m7 aes:m7 des:7
    es2.:7 ges1:7 s4
    bes2.:m7 ges1:7 s4        
  }
  \alternative
  {
  {bes2.:m7 b1:7 s4}
  {bes1:m7 b:7}
  }
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 2
f'16^\markup{Intro} es des bes es des bes aes
bes4. des8~ des4. es8~
es2 f16 es des bes es des bes aes
des4. es8~ es4. bes8~
bes2 \tuplet 3/2 {bes'16 aes f} es des \tuplet 3/2 {f es des} bes aes
bes4. des8~ des4. es8~
es2 f16 es des bes es des bes aes
des4. es8~ es4. bes8~
bes1 r r r
\break
\repeat volta 2 {
  bes1~ bes4. bes8 des es es des
  es1~ es4. des8 es des fes des
  \break
  es des bes2.~ bes4. bes8 des bes des4
  bes1~ bes4. bes'8 r aes r fes
  \break
  es4. des8~ des2~
  des4. des8 f aes f des
  c4. bes8~ bes2~ bes des8 bes des4
  \break
  bes1~ bes4. bes8 des bes des4
}
\alternative{
  {bes2. <a fis'>4~ <a fis'>1}
  {bes1 cis^\markup{No Solo anticipation}}
}
\bar "|."
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"