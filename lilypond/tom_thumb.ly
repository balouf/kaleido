% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Tom Thumb" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  \repeat volta 2 {a1:7 c a:7 c}
  \repeat volta 2 {a:7 c2:6 c:7 a1:7 d:7.11+
  a:7 c2:6 c:7 a1:7 d:7.11+
  f:7 b2:m7.5- e:7 c1:6 d:7
  f:7 b2:m7.5- e:7 f1:7 s f:7 bes:7.11+}
}


sopran = \new Staff {
	\time 4/4
	\tempo 4 = 158 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 e'8~
\repeat volta 2 {
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, \trio {b' \parenthesize d bes} r4 r8 e~
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, \trio {b' \parenthesize d bes} r4 r8 e~
} \break
\repeat volta 2 {
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, \trio {b' \parenthesize d bes} r4 r8 e~
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, b' a r4 r8 e'~\break
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, \trio {b' \parenthesize d bes} r4 r8 e~
  e a, \trio {d \parenthesize e cis} r4 r8 c~
  c e, b' a r fis4-> es8->~\break
  es2 r
  a4 a8 bes a g a e~4 d->-. r4 r8 e~4 fis->-. r8 fis4-> es8->~\break 2 r
  a4 8 bes a g a es~ \bar "||" 1 r4 r8 f~2 es2. r8 e-> r c-> r4 r2
}
	}
}



flute = \new Staff {
	\time 4/4
	\tempo 4 = 158 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 s8
\repeat volta 2 {s1 s s r2 r4 r8 e'~}
\repeat volta 2  {4 8 g~8 8 a4~4. g8 a g e d~4 cis->-. r r8 c~
                  4 b->-. r r8 e~
                  4 8 g~8 8 a4~4. g8 a g e d~4 cis->-. r r8 c~
                  4 b->-. r8 c4-> a8->~2 r4 c8 a
                  d4 8 es d c d c~4 b->-. r4 r8 8~4 a->-. r8 c4-> a8->~ 2 r4
                  c8 a d4 8 es d c d c~\bar "||" 1 r4 r8 d~2 c2. r8 g'-> r e-> r4 r2
	}	}
}


theme = <<
\flute
\accords
\sopran
>>


\book {
%  \bookOutputSuffix #(string-append suffix "Ut")
	\header{
	instrument = "(version Ut)"
	}
\score {
	<<
	\transpose c' c' {\theme}
	>>

  \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
\score {
 \unfoldRepeats 
 	<<
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
	\transpose es c' {\theme}
	>>
  \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 2)
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
	\transpose bes c' {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 2)
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
	\transpose f c {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner.common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
}
