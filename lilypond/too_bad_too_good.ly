% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Too Bad Too Good" 
 	composer = "Yoko Kanno"
 	tagline = ""

}


accords = \chords {
  R1*8
  \repeat volta 2 {bes1:m7 s s}
  \alternative {{s}{s}}
  es:m7 s s s
  bes:m7 s s s
  \repeat volta 2 {
  bes:m7 es:m7 bes:m7 es:m7 bes:m7 es:m7 bes:m7 es:m7
  }
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
bes'4-^\f f'-^ bes8-^ aes f4-.
aes-^ bes-> ~ bes2~ bes1
r R1*3
r2 r4 bes,8\mf des \mark \default
\repeat volta 2 {
f4->~ f8 bes16 e,~ e2
f16 e f e f bes8 e,16~ e2
f4->~ f8 bes16 e,~ e8. es16 des8 es16 des
}
\alternative{
  {
<< \voiceOne {\override NoteHead #'color = #red
r16 bes8.-> des-> es16->~ es8 f->~ f4
   }
   \new Voice {\voiceTwo
r8 bes,~ bes4 r8 bes bes des
   }
>>
  }
  {
<< \voiceOne {\override NoteHead #'color = #red
r16 bes8.-> des-> es16->~ es8 e->~ e16 f8.->
   }
   \new Voice {\voiceTwo
r8 bes,~ bes4~ bes2
   }
  >> \oneVoice \override NoteHead #'color = #black
}}
\mark \default \bar "||"
<des es g>16\mf\< <des es g>8  <bes des f>16 <bes des f>8 <des es g>16 <des es g>16
<< \voiceOne {\override NoteHead #'color = #red
s4 s16 es ges aes
bes8 bes aes16 ges es ges~ ges es8 bes16 des d es8
   }
   \new Voice {\voiceTwo
r8 c' ges4 s1
   }
  >> \oneVoice \override NoteHead #'color = #black
<des es g>16 <des es g>8  <bes des f>16 <bes des f>8 <des es g>16 <des es g>16
r8 c' ges4
es16 ges8 g16~ g aes8 a16\ff r4 bes,8\mf des
\mark \default \bar "||"
f4->~ f8 bes16 e,~ e2
f16 e f e f bes8 e,16~ e2
f4->~ f8 bes16 e,~ e8. es16 des8 es16 des
\mark \markup { \musicglyph "scripts.coda" }
r8 bes~ bes4 r2 \break
\repeat volta 2 {
  r1^"Solos" r r r r r r r
  } \break
\repeat volta 2 {
\repeat percent 3 {bes16^"Turnaround riff" bes r8 r bes16 bes r2} 
}
\alternative {{bes16 bes r8 r bes16 bes r16 des~ des8 r4}
{bes16 bes8 des16 des8 es16 es16~ es e e8 f ges}}
<des es g>16 <des es g>8  <bes des f>16 <bes des f>8 <des es g>16 <des es g>16
r8 c' ges4
r1
<des es g>16 <des es g>8  <bes des f>16 <bes des f>8 <des es g>16 <des es g>16
r8 c' ges4
es16 ges8 g16~ g aes8 a16 r2^"C after solos"
\break
R1*3 bes,8 des des16 es8 e16 r es des bes es8 des
\bar "|."
\break
\mark \markup {\musicglyph "scripts.coda" }
r8 bes~ bes4~ bes2~ bes1
r4 f'-^ bes8-^ aes f4-.
aes-^ bes->~\fp\< bes2~ bes1~ bes\ff r4 bes-^ r2
\bar "|."
	}

}


theme = \staffViolon

\include "utils/books.ly"
