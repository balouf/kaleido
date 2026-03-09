% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Desert Moonlight" 
 	composer = "Lee Morgan"
 	tagline = ""

}


accords = \chords {\partial 2 s2
\repeat volta 3 {
  d1:m s e:7sus4 s es:7 s d:m6.9 s d:m d:m6 f:maj7 es:maj7
  e:m13 es:7.5- d:m6.9
  \alternative {
  \volta 1,3 {d:m6.9}
  \volta 2 {d:m6.9 a:7.9+ s d:m7+ s f:maj7 es:maj7 e:maj7 es:7.5-}
  }
}
\repeat volta 2 {
d:m6.9 s e:m7.5- es:7.5-.9+ e:m7.5- es:7.5-.9+ d:m6.9 s2 a:7.9+ \break
d1:m6.9 s f:maj7 es:maj7 e:7.13 es:7 d:m7.9 s2 a:7.9+ \break
}
a1:7.9+ s d:m6.9 s f:maj7 es:maj7 e:maj7 es:7.5-
}

upper = \relative c' {\partial 2 f4 g8 a~
\repeat volta 3 {1~4. f'8 r e r d e1~2 r4 a,8 bes
d1~2 bes4 c8 a~1 r2 d,4 e8 f~2. g8 f~2 r8 d e f
\trio {a16 bes a} g8 a4~4. 8~2 r8 c bes aes
a2.. 8~2 r8 f r a, e'1~
\alternative {
  \volta 1,3 {4 r f g8 a\laissezVibrer}
  \volta 2 {e4\repeatTie r4 r8 a bes a
  c1~4 r8 a bes a c a cis4. a16 b e2~2 r8 a, r a
  e'4. d8~2 d4. c8~2 dis4. cis8~4. 8 c4. bes8~4. c8}
}
}
}

lower = \relative c' {\partial 2 d4 e8 f~
\mark \default
\repeat volta 3 {1~4. a8 r g r f g1~2 r4 g8 a
bes1~2 g4 a8 f~1 r2 d4 e8 c~2~8 a bes b~2. r4
\trio {a'16 bes a} g8 f4~4. es8~2 r8 c' bes es,
e2.. es8~2 r8 f r a, b1~
\alternative {
  \volta 1,3 {4 r d e8 f\laissezVibrer}
  \volta 2 {b,4\repeatTie r4 r8 a' bes a
            \mark \default
  g1~4 r8 a bes a c a cis4. a16 b cis2~2 r8 a r a
  c4. a8~2 bes4. g8~2 b4. gis8~4. 8 a4. g8~4. a8}
}}
}


theme = \new Staff {
	\time 4/4
	\tempo 4=196 
	\set Staff.midiInstrument = "trumpet"
	\key d \minor
	\clef treble
	\accidentalStyle modern-cautionary
	 { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
<<
{\voiceOne \upper}
\new Voice {\voiceTwo \lower}
>> \oneVoice \break
\set Score.rehearsalMark = #1
\mark \default
\repeat volta 2 {\repeat unfold 16 {r1}}
\mark \default
\repeat unfold 8 {r1} \fine
}
}
#(define raggedlast #f)
\include "utils/books.ly"
