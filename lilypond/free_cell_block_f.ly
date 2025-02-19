% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Free Cell Block F - 'Tis Nazi USA" 
 	composer = "Charles Mingus"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 
  {ges1:maj7 s4 b1:13 b1:13 ges1:maj7 s4 b1:13}
  \alternative{
  {e1:maj7 a:13 d:maj7 d:m7 g:7 c:maj7 c:m7
  e:m7 es:maj7.11+ aes:maj7.11+ des:maj7.5-}
  {e1:maj7 s a:13 s d:maj7 s d:m7 s g:7 s
  c:maj7 s
  des:maj7 s4 ges1:13 ges:13 des:maj7 s4
  ges1:13 es2:m7.5- aes:7 des:maj7 bes:m7
  es:m7 aes:7 d:maj7 e:maj7 d:maj7 des:6 g1:7.11+
  }
  }
}


theme = \new Staff {
	\time 5/4
	\tempo 4 = 166
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\set Score.voltaSpannerDuration = #(ly:make-moment 12/4)
\repeat volta 2 {
\trio{bes'8 f ges} \trio{aes es f} \trio{ges des es}
\trio{f bes, ces} \trio{des ces bes}
\time 4/4
a <a gis'>~2.
a8 <a gis'>~2.
\time 5/4
\trio{bes'8 f ges} \trio{aes es f} \trio{ges des es}
\trio{f bes, ces} \trio{des ces bes}
\time 4/4
a8 <a gis'>~2.
\alternative {
{
  \trio{fis' 8 cis dis} \trio{e b cis}
  \trio{dis gis, a} \trio{b a gis}
  g8 <g fis'>~2.
  \repeat unfold 3 {
    \trio{e'4 d cis} \trio{b cis d}}
  \trio{e d c} \trio{b c d}
  \trio{d c b} \trio{a b c8 8}
  \repeat unfold 8 {g' a16 d a8 d,}
\break
}
{fis4. e dis4^"Latin" cis4. dis e4 fis4. e d4 cis4. d e4-.
fis4. e d4 cis4. d e4 f4. e d4 cis4. d e4-.
e4. d c4 b4. c d4-.
\bar "||"
d8 c4 b8 a^"Swing" b c d e g b d fis,4 r \bar "||"
\time 5/4
\trio{f'8 c des} \trio{es bes c}  \trio{des aes bes}
\trio{c f, ges} \trio{aes ges f}
\time 4/4
fes <fes es'>~2. fes8 <fes es'>~2. 
\time 5/4
\trio{f'8 c des} \trio{es bes c}  \trio{des aes bes}
\trio{c f, ges} \trio{aes ges f}
\time 4/4
fes <fes es'>~2.
\trio{a4 4 4} \trio{a b a}
aes8 bes c des a4 r8 bes c des es f ges4 f
des1~1~1\fine
}
}
}
	}
}
\include "utils/books.ly"
