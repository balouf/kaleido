% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Better Git it in your Soul" 
 	composer = "Charlie Mingus"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {f2.:7 s s s
                 \break
                 f:7 s bes:7 s}
\alternative{
{bes:7 s4. f4.:7}{bes2.:7 f:7}
}
\bar "||"
\break
bes:7 f:7 bes:7 f:7
\break
bes:7 f4.:7 d:m7 g2.:m7 c:7
\bar "||"
\break
f:7 s s s 
\break
f:7 s bes:7 s s f:7
\bar "|."
}

theme = \new Staff {
	\time 6/8
	\tempo 4. = 100 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
r8 a'16 g a g a g f8 d d4 g8 a r4	
r8 a16 g a g a g f8 d d4 g8 f r4	
r8 a16 g a g a g f8 d d4 g8 a r4
f'2.~ 2.~}
\alternative{
{
<<
  {
    \voiceOne
    2.~ 2.
  }
  \new Voice {
    \voiceTwo
    r8 f16 d c a g8 d bes' c4 bes8 a4.
  }
>>
\oneVoice
  }
{
<<
  {
    \voiceOne
    f'2.~\repeatTie 2.
  }
  \new Voice {
    \voiceTwo
    r8 f16 d c a g c8. bes8 <a c>2.
  }
>>
\oneVoice
}
}
bes8 8 8 d4 8 
<<
  {\voiceOne r8 f f c a f}
  \new Voice {\voiceTwo c'2.}
>>
\oneVoice
bes8 8 8 d4 8
<<
  {\voiceOne r8 f f c a f}
  \new Voice {\voiceTwo c'2.}
>>
\oneVoice
bes8 8 8 d4 8 c8. d16 c bes a8 d, f g2. c
r8 a16 g a g a g f8 d d4 g8 a r4	
r8 a16 g a g a g f8 d d4 g8 f r4	
r8 a16 g a g a g f8 d d4 g8 a r4
f'2.~ 2.~ 
<<
  {
    \voiceOne
    f2.~ 2.
  }
  \new Voice {
    \voiceTwo
    r8 f16 d c a g c8. bes8 <a c>2.
  }
>>
\oneVoice
}
}

\include "utils/books.ly"
