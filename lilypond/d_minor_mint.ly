% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "D Minor Mint" 
 	composer = "Freddie Hubbard"
 	tagline = ""
}


accords = \chords {
  \repeat volta 2 {r1 s s s}
  \repeat volta 2 {
    d:m6.9 s bes:13 s d:m6.9 s bes:13 s
    g2:m7 s4. des2:7.9+ c:7.9+ b:m7.5- bes:13 es1:maj7 s8
  }
  \alternative {{d2:7.9+ s4. g1:7.9+ c:7.9+ a:7.5- s8}{aes1:13 g2:7 f:13 e:m7 es4.:maj7.11+ cis1:m/d s8}}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.markFormatter = #format-mark-box-alphabet
% \set Timing.beamExceptions = #'()
\clef bass
\repeat volta 2
{r8 d, a'2~ a8 d, a'4. d,8 a' g f4-.
r8 bes, f'2~ f8 bes, f'4. bes,8 f' e d4-.
}
\break 
\clef treble
\repeat volta 2 {
r8 a'' d e, c' e, b' e, a e g d f b, e b
<e aes> <d g>~ <d g>2 <e aes>8 <d g>~ <d g>4. <b d>8 \tuplet 3/2 {<d f> <d f> <d f> } <e g>4-.
r8 a d e, c' e, b' e, a e g d f b, e b
<e aes> <d g>~ <d g>2 <e aes>8 <d g>~ <d g>4 r r8 fis \tuplet 3/2 {g bes d}
\break 
f e d f r
<<
	\voiceOne {
	  e d e~ e4. es8~ es4. d8~ d4. c8~ c4. bes8~ bes2 r
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	e8 d a~ a4. g8~ g4. f8~ f4. g8~ g f e es d2 r4 d8 bes
	}
>>
\break 
}
\alternative {{
<<
	\voiceOne {
	  f'2. es8 bes'~ bes2~ bes8 bes aes es'~ es2~ es8 des es a,~ a bes4 c8 r2
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	c,2. c8 f~ f2~ f4. bes8~ bes2~ bes8 aes bes e,~ e f4 g8 r2
	}
>>
\break 
\oneVoice
              }
              {
f1 d4 a b d d r <d a'>4. <cis gis'>8~  <cis gis'>2. r4 \bar "|."
}
}
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 236
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"