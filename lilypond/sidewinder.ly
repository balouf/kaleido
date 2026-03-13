% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Sidewinder" 
 	composer = "Lee Morgan"
 	tagline = ""

}


accords = \chords {
  s1 \repeat volta 2 {
    \repeat percent 4 {s4 d4.:7 es:7}\break
    \repeat percent 4 {s4 d4.:7 es:7}\break
    \repeat percent 4 {s4 g4.:7 aes:7}\break
    \repeat percent 3 {s4 d4.:7 es:7} s4 g4.:m7.5- c:7.9-\break
    \repeat percent 4 {s4 f4.:m7 bes:7}\break
    \repeat percent 2 {s4 d4.:7 es:7} es4:7 s2. s1
    }
}


upper = \new Staff {
	\time 4/4
	\tempo "Funky Bossa" 4 = 166 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
r1 \repeat volta 2 {
\repeat percent 2 {r4 <fis c'>-^ r8 <g des'>-^r4}
r8 <c c,> <des des,>4 <es es,> <f f,> <c c,>8 <des des,> <c c,> <bes bes,>~2
\repeat percent 2 {r4 <fis c'>-^ r8 <g des'>-^r4}
r8 <c c,> <des des,>4 <es es,> <f f,> <fis fis,>8 <g g,> <es es,> <des des,> r <a a,>4.
<aes aes,>4-- < b f'>-^r8 <c ges'>-^ r4 r < b f'>-^r8 <c ges'>-^ r4
r8 <f f,> <ges ges,> <aes aes,> <bes bes,> <aes aes,> <ges ges,> <f f,>
\override Glissando.style = #'zigzag
<aes aes,> <es es,> <f f,> <ges ges,>~8 \glissando <bes, bes,> <aes aes,> <bes bes,>
es,4-- <fis c'>-^ r8 <g des'>-^ r4 r <fis c'>-^ r8 <g des'>-^ r4
r8 <bes bes,> <c c,> <des des,> <es es,> <f f,>4.
r8 <g g,> <aes aes,> <a a,> <bes bes,> <c c,>4.
\repeat percent 2 {r4 <f, aes,>-^ r8 <g bes,>-^r4}
r8 <f f,> <g g,>4 <aes aes,> <a a,>4 8 <bes bes,> <aes aes,> <e e,> r8 8 <bes bes,> <e e,>
<es es,>4-- <c fis,>-^r8 < des g,>-^ r4 r <c fis,>-^r8 < des g,>-^ r4 \bar "||"
r r8 <bes bes,>16 <des des,> <es es,>8 8 16 <bes bes,> <des des,>8
<es es,>4-^r8 <des des,>~8 <bes bes,> <aes aes,> <bes bes,>
}
}
}

lower = \new Staff {
	\set Staff.midiInstrument = "electric bass (pick)"
	\key es \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
r4 r8 bes r aes e4 \repeat volta 2 {
\repeat percent 4 {es4 r8 8 bes4 des}
\repeat percent 4 {\rhythm {r4 b r8 8 r4}}
\repeat percent 4 {\rhythm {r4 b r8 8 r4}}
\repeat percent 4 {\rhythm {r4 b r8 8 r4}}
\repeat percent 4 {\rhythm {r4 b r8 8 r4}}
\repeat percent 2 {\rhythm {r4 b r8 8 r4}}
\rhythm {b4^\markup {\italic (Break)} r r2 r1^\markup {\italic (Fine)}}
}
}
}

theme = \new PianoStaff <<\upper \lower>>

% theme = \new Staff {
% 	\time4/4
% 	\tempo "Med. Ballad" 4 = 96 
% 	\set Staff.midiInstrument = "trumpet"
% 	\key es \major
% 	\clef treble
% 	\accidentalStyle modern-cautionary
% 	\relative c' { 	
%  % Type notes here 
% \compressEmptyMeasures
% \set Score.voltaSpannerDuration = #(ly:make-moment 8/4)
% }
% }
#(define raggedlast #f)
\include "utils/books.ly"
