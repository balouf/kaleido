% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Vashkar" 
 	composer = "Carla Bley"
 	tagline = ""

}


accords = \chords {
\repeat volta 2 {b1.:m7.6- c2./b s8 cis2:dim s8
b2.:m7.9-.6- s8 c2:/b s8 gis1:m b2:7sus4
b2.:m7 s8 g2:m/b s8 d1:maj7 bes2:m
b1/bes des2/b 
\alternative {{bes1:7.5+.9+ s2}{bes1 s2}}
}
}

flute = \new Staff {
	\time 6/4
	\tempo 4 = 158 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {fis8 e cis e d2. r4
a'4. g16 fis g4 bes8[ f']~8 bes, d e
d fis, b4~2 r8 b16 a g8 c
e, g <gis dis b>4 r fis'16 b, d f <fis, dis'>4 r
fis8 e cis e d4 r8 <bes bes'>8~4 d8 f 
fis4  a8 <cis e>~8 a cis es des fis, bes4~1.
\alternative {{r}{r}}
} \fine
}
}

sopran = \new Staff {
	\time 6/4
	\tempo 4 = 158 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef bass
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {
  <b, fis' b>2~ 4. <<{b'8~4 8 8} \\{r4 b,4.} >>
  <b fis' c'>2~4. <b g' des'>8~2
  <b fis' d'>2~4. <b' c e>8~2
  r4 gis, r r <b a'> r
  <b fis' b>2~4. <b g'>8~2
  <d a'>2~2 
  <<{f2 <ges ces, >~2 <aes des,>}\\ {bes,2~2~2~2~}>>
  \alternative {{<<{<bes' d,>~2 \trio {r4 <des f,> ces}}\\
                {bes,2~2~2}>>}{<<{<bes' d,>2~1}\\{bes,2\repeatTie~1}>>}}  
}\fine
	}
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
