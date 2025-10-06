% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm
  % Increase space between systems globally
  system-system-spacing = #'(
    (basic-distance . 15)   % Default space between systems
    (minimum-distance . 10) % Minimum allowed space
    (padding . 5)           % Extra padding added to the calculated space
  )} 

\header {
	title = "Ugetsu" 
 	composer = "Cedar Walton"
 	tagline = ""

}


accords = {
\repeat volta 2 {
  \chords { s8 d2.:maj7/a  e1:m7/a s8
  s8 d2.:maj7/a  e1:m7/a s8
}}
\chordmode  {s8 d2.:maj7/a  e1:m7/a s8
  s8 d2.:maj7/a a1:7.9-.13- s8}
\repeat volta 2 {
\chordmode {d1:maj7 c:maj7 d:maj7 c:maj7
d:maj7 aes:7 g:maj7 cis2:m7.5- c:maj7
b1:maj7.3- c:maj7 b2:m7 e:7}
<<\chordmode {bes:m7 es:7}
\chords \with {
      \override ChordName.font-size = #-2
      \override VerticalAxisGroup.Y-offset = #-3
    } {fis4:7.9- f:7 e:7.11+ es:7}  
>>
}
\repeat volta 2 {
\chordmode {d1:maj7/a e:m7/a d1:maj7/a e:m7/a d1:maj7/a e:m7/a d1:maj7/a e:m7/a }
}
}

theme = \new Staff {
	\time 4/4
	\tempo 2 = 95
	\set Staff.midiInstrument = "trumpet"
	\key d \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
% \compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {r1\rythme {r8 4. 4. 8\laissezVibrer} r1 r1\rythme{r8 4. 4. 8\laissezVibrer} r1}
\break r1\rythme {r8 4. 4. 8\laissezVibrer} r1 r1\rythme {r8 4. 4. 8\laissezVibrer} r2 r4 a'\break
\repeat volta 2 {
cis2 r8 a\parenthesize cis\parenthesize a b2 r8 b e b 
cis2 r8 a cis a b2 r8 cis b fis~ \break
2 r8 b a fis~2 r8 d e fis~2 r8 d g b a4 g c, e8 cis~ \break
2 r8 b cis d~2 r8 cis d e~2 r4 fis g a ais c}\break
\repeat volta 2 {cis1~\rythme {r8 4. 4. 8\laissezVibrer} 1 r1\rythme {r8 4. 4. 8\laissezVibrer} r1 \break
                 r1\rythme {r8 4. 4. 8\laissezVibrer} r1 r1\rythme {r8 4. 4. 8\laissezVibrer} r1}
}
}

\include "utils/books.ly"

%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0
%}
