% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.14.0"

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
	#(set-accidental-style 'modern-cautionary)
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
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
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
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
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
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
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
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
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
}
