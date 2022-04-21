% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "House of Jade" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  bes1:7sus4 a:7sus4 e:m7 es:maj7.11+

  d2:m7.5- des:maj7 c:m7 des:7 es:7 f:7 des:7 c:m7
  d2:m7.5- des:maj7 c:m7 f:7 es:7 f:7 des:7 c:m7
  
  es1:7sus4 R R R
  d1:7sus4 R R R
  

  d2:m7.5- des:maj7 c:m7 des:7 es:7 f:7 des:7 c:m7
  d2:m7.5- des:maj7 c:m7 f:7 es:7 f:7 des:7 c:m7
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 78 
	\set Staff.midiInstrument = "trumpet"
	\key c \minor
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
r1^"Intro" r1 r1 r2 r4 a' \break
\bar "||"
aes bes8 c~ c4 c8 es d4 bes8 g~ g2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g4. f8 \break
aes4 bes8 c~ c4. es8 f4 d8 c~ c2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g2 \break
\bar "||"
c1~ c4. g16 es f8 g4 aes16 bes
c1~ c4. aes16 f g8 aes4 bes16 c \break
d1 r4 e d bes8 a~ a1~ a2. r8 a \break
\bar "||"
aes4 bes8 c~ c4 c8 es d4 bes8 g~ g2
c8 es4 c16 bes g4. f8 bes4 f8 g~ g4. f8 \break
aes4 bes8 c~ c4. es8 f4 d8 c~ c2
c8_"Play X3 last time" es4 c16 bes g4. f8 bes4 f8 g~ g2 \bar "|."
	}
}

\book {
%  \bookOutputSuffix #(string-append suffix "Ut")
	\header{
	instrument = "(version Ut)"
	}
\score {
	<<
	\transpose c' c' {\accords}
	\transpose c' c' {\theme}
	>>

  \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }
}
\score {
 \unfoldRepeats 
 	<<
	\transpose c' c' {\accords}
	\transpose c' c' {\theme}
	>>
 \midi {}
}
}

\book {
 \bookOutputSuffix "-Eb"
	\header{
	instrument = "(version Eb)"
	}
\score {
	<<
	\transpose es c' {\accords}
	\transpose es c' {\theme}
	>>
  \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }
}
}

\book {
 \bookOutputSuffix "-Bb"
	\header{
	instrument = "(version Bb)"
	}
\score {
	<<
	\transpose ais c' {\accords}
	\transpose ais c' {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }
}
}


\book {
 \bookOutputSuffix "-F"
	\header{
	instrument = "(version F)"
	}
\score {
	<<
	\transpose f c {\accords}
	\transpose f c {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/2)
    }
  }
}
}


%{
convert-ly (GNU LilyPond) 2.22.1  convert-ly: Processing `'...
Applying conversion: 2.15.7, 2.15.9, 2.15.10, 2.15.16, 2.15.17,
2.15.18, 2.15.19, 2.15.20, 2.15.25, 2.15.32, 2.15.39, 2.15.40,
2.15.42, 2.15.43, 2.16.0, 2.17.0, 2.17.4, 2.17.5, 2.17.6, 2.17.11,
2.17.14, 2.17.15, 2.17.18, 2.17.19, 2.17.20, 2.17.25, 2.17.27,
2.17.29, 2.17.97, 2.18.0, 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.39, 2.19.40, 2.19.46,
2.19.49, 2.20.0, 2.21.0, 2.21.2, 2.22.0
%}
