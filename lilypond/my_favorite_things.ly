% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "My Favorite Things" 
 	composer = "O. Hammerstein & R. Rodgers"
 	tagline = ""

}


accords = \chords {
		\repeat volta 2 {\repeat percent 4 {e2.:m f:maj9.11+}}

		\repeat volta 2 {
		\repeat percent 4 {e:m}
		\repeat percent 4 {c:maj7}
		a:m d:7 g:maj7 c:maj7
		g:maj7 c:maj7 fis:m7.5- b:7.9-
		}
		\repeat percent 4 {e:maj7}
		\repeat percent 4 {a:maj7}
		a:m7 d:7 g:maj7 c:maj7
		g:maj7 c:maj7 fis:m7.5- b:7.9-
		\repeat percent 2 {e:m} fis:m7.5- b:7.9-
		e:m e:m/d \repeat percent 2 {c:maj7}
		\repeat percent 2 {c:maj7} \repeat percent 2 {a:7}
		g:maj7 \repeat percent 2 {c:maj7} d:7
		g:maj7 c:maj7 g:maj7 c:maj7 g:maj7 c:maj7 fis:m7.5- b:7.9-

		\repeat volta 2 {
		\repeat percent 4 {e:m}
		\repeat percent 4 {c:maj9.11+}
		a:m d:7 g:maj7 c:maj7
		g:maj7 c:maj7 fis:m7.5- b:7.9-
		}
		\repeat percent 4 {e:maj7}
		\repeat percent 4 {a:maj7}
		a:m7 d:7 g:maj7 c:maj7
		g:maj7 c:maj7 fis:m7.5- b:7.9-
		\repeat percent 2 {e:m} fis:m7.5- b:7.9-
		e:m e:m/d \repeat percent 2 {c:maj7}
		\repeat percent 2 {c:maj7} \repeat percent 2 {a:7/cis}
		g:maj7/d e:7 a:m d:7
		g:maj7 c:maj7 g:maj7 c:maj7 g:maj7 c:maj7 fis:m7.5- b:7.9-

		
		%c2.:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 3/4
	\tempo 2. = 72 
	\set Staff.midiInstrument = "trumpet"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\repeat volta 2 {\repeat percent 4 {s2. s}}
\repeat volta 2 {
e4 b' b fis e e b e e fis e2
e4 b' b fis e e b e e fis e2 
\bar "||"
e4 b' a e fis d d a' g c,2.
b4 c d e fis g a b a dis,2.
}
e4 b' b fis e e b e e fis e2
e4 b' b fis e e b e e fis e2
\bar "||"
e4 b' a e fis d d a' g c,2.
b4 c d e fis g a ais b r4 c2
\bar "||"
r4 b b b2 e,4 r a a a2 dis,4
r g g g2 b,4 e2.~ e2 e4
\bar "||"
e fis e fis e fis g a g a2 g4
b c b c2.~ c b 
\bar "||"
g~ g~ g~ g r r r r
\break \bar ".|:-||"
\repeat volta 2 {\mark \markup {"Solo"}
\repeat percent 4 {s2.} \repeat percent 4 {s} \bar "||" s s s s s s s s} \break
\repeat percent 4 {s} \repeat percent 4 {s}
\bar "||"
s s s s s s s s
\bar "||"
\repeat percent 2 {s} s s s s \repeat percent 2 {s}
\bar "||"
\repeat percent 2 {s} \repeat percent 2 {s} s s s s
\bar "||"
s s s s s s s s
\bar "|."

%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"