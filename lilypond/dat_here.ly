% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Dat Dere" 
 	composer = "Bobby Timmons"
 	tagline = ""

}


accords = \chords {\partial 8 s8
  \repeat volta 3 {
  c4.:m es:7 s4 a4.:m7.5- aes:7 s4 
  c2:m aes:7 d4.:m7.5- s4 g4.:7
  c4.:m es:7 s4 a4.:m7.5- aes:7 s4 
  d2:m7.5- g:7.5+
  \alternative {
  {c4.:m s4 g4.:7.5+}
  {c1:m  
   c4:m7 g8:7 c:m s2 g4:m7 d8:7 g:m7 s2 
   c4.:m7 aes:7 s4 d4.:m7.5- s4 g4.:7
   c4:m7 g8:7 c:m s2 g4:m7 d8:7 g:m7 s2 
   d2:m7.5- g:7.9+ c4.:m s4 g4.:7.9+
  }
  {c1:m}
  }
  }
}

theme = \new Staff {
	\time4/4
	\tempo 4=144 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
\partial 8 c8
\repeat volta 3 {
  f g \trio {c, f es~} 4. c8
  f g \trio {c, f es~} \trio {8 c d } \trio {es g a}
  d4 \trio {c8 g es} f es \trio {f es g~} 2. r8 c,
  f g \trio {c, f es~} 4. c8
  f g \trio {c, f es~} 8 c \trio {f es f}
  \trio {es f es} g4 ges16( f es c) \trio {bes8 aes c~}
\alternative {
{2. r8 8 \break}
{2. c'4 \bar "||" 
\tuplet 5/4 {g'16 ges f es c} f8 es \trio {r g, g} \trio{g g g} 
\tuplet 5/4 {d'16 des c bes g} c8 bes \trio {r c, d} \trio {es g a}
\trio {d c g} es f' \trio {es bes ges} \trio {f es ges~} 2. c4
\tuplet 5/4 {g'16 ges f es c} f8 es \trio {r g, g} \trio{g g g} 
\tuplet 5/4 {d'16 des c bes g} c8 bes r c, \trio {f es f}
  \trio {es f es} g4 ges16( f es c) \trio {bes8 aes c~} 2. r8 8 \break
}
{c1}
}
} \fine
}
}
#(define raggedlast #t)
\include "utils/books.ly"
