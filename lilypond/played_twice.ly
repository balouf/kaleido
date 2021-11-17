% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Played Twice" 
 	composer = "Monk"
 	tagline = ""

}


accords = \chords {
  \partial 4. s4.
  \repeat volta 2 {
    c1:maj7 des:7 des:7 a:7 c:maj7 des:7 g:m7 c2:7 f1:7 f:7 f:7 f:7 c:maj7 des:7 des2:7 c:7 a4:7 d2.:maj7
  }
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 4. des8 aes' bes
\repeat volta 2 {
  << \voiceOne {\override NoteHead.color = #red
b4. a8~ a4 aes~ aes8 des,4 des8
}
\new Voice {\voiceTwo  g4. c,8~ c4 g'~ g8 ces,4 ces8}
>>
\oneVoice
\override NoteHead.color = #black
  \tuplet 3/2 {des es f} aes bes
  des bes r4 r2 r4 a8 fis r2
  << \voiceOne {\override NoteHead.color = #red
b4. a8~ a4 aes~ aes8 des,4 des8
}
\new Voice {\voiceTwo  g4. c,8~ c4 g'~ g8 ces,4 ces8}
>>
\oneVoice
\override NoteHead.color = #black
 \tuplet 3/2 {des es f} aes bes
  c8 a r4  r2 \time 2/4 r4 r8 es \time 4/4
  << \voiceOne {
  \tuplet 3/2 {f g a} bes c d bes r4
  r8 es, \tuplet 3/2 {f g a} bes c d bes
  r4 r8 es, \tuplet 3/2 {f g a} bes c d bes r4}
\new Voice {\voiceTwo \override NoteHead.color = #red
f,4 r r r8 f~ f r r4 r2 r8 f4 r8 r2 r8 f4 r8}
>>
\oneVoice  
  r2
  << \voiceOne {\override NoteHead.color = #red
b'4. a8~ a4 aes~ aes8 des,4 des8
}
\new Voice {\voiceTwo  g4. c,8~ c4 g'~ g8 ces,4 ces8}
>>
\oneVoice
\override NoteHead.color = #black
 \tuplet 3/2 {des es f} aes bes
  des bes4. c8 a4. fis4 d^"End" r8 des aes' bes 
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
}

theme = \staffViolon

\include "utils/books.ly"