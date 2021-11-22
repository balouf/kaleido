% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Adam's Apple" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
	R1*8
	\repeat volta 2 {
	b1:7 s s s
	b:7 s s s
	a:7 s s s
	b:7 s s s
	b:min e:7 cis:m fis:7.9+
	b:7 s s s}
	\break
	\repeat volta 2 {
	b:7 s s s
	b:7 s s s
	\break
	a:7 s s s
	b:7 s s s
	\break 
	b:min e:7 cis:m fis:7.9+
	b:7 s s s}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 178 
	\set Staff.midiInstrument = "violin"
	\key b \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
R1*4 R1*4
\repeat volta 2 {
	b'1~ b~ b8 a b a cis a b r
r a b a cis a b a cis1~ cis4. dis,8 cis'4 gis
	R1*2
	b1~ b~ b8 a b a cis a b r
r a b a cis a b a cis1~ cis4. dis,8 cis'4 gis
R1*2
cis1~ cis8 b cis b e b cis r
r b cis b e b fis' b, gis'4
a8 gis fis e d4~ d1~ d2. cis4~ cis1~ cis
}
\repeat volta 2 {R1*24}
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
