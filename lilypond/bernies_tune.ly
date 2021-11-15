% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 




\header {
	title = "Bernie's Tune" 
 	composer = "Bernie Miller"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
		\repeat volta 2 {
			d1:m7 s bes:11+^9 s
			e:m7.5- a:7.9+ d:m7
		}
		\alternative {{e2:m7.5- a:7.9+}{d1:m7}}
		bes2:6 g:m7 c:m7 f:7
		bes:6 g:m7 c:m7 f:7
		bes:6 g:m7 c:m7 f:7
		fis:m7 b:7 e:m7 a:7.9+
		d1:m7 s bes:11+^9 s
		e:m7.5- a:7.9+ d:m7
		e2:m7.5- a:7.9+
		%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
		\repeat volta 2 {
			d1:m7 d1:m7 bes:11+^9 bes:11+^9
			e:m7.5- a:7.9+ d:m7 e2:m7.5- a:7.9+ 
			d1:m7 d1:m7 bes:7 bes:7
			e:m7.5- a:7.9+ d:m7 d:m7 
		bes2:6 g:m7 c:m7 f:7
		bes:6 g:m7 c:m7 f:7
		bes:6 g:m7 c:m7 f:7
		fis:m7 b:7 e:m7 a:7.9+
		d1:m7 d1:m7 bes:11+^9 bes:11+^9
		e:m7.5- a:7.9+ d:m7 e2:m7.5- a:7.9+ 	
		}	
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 216 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\once \override Score.BreakAlignment.break-align-orders =
        #(make-vector 3 '(instrument-name
                          left-edge
                          ambitus
                          span-bar
                          breathing-sign
                          clef
                          key-signature
                          time-signature
                          staff-bar
                          custos
                          span-bar))
  \bar ".|:"
\repeat volta 2 {
r8 a' r gis a4-. r8 a
r8 gis a4-.
a,8 d f a aes2.. e8~ e2 r
r8 g r fis g4-. r8 g
r8 fis g4-.
a,8 cis e g f2.. d8~
}
\alternative {{d2 r}{d2\repeatTie r}}
\bar "||"
bes4-. r g'8 f r d
c4. d8~ d2
bes4-. bes4-. g'8 f r d c2. r4
bes4-. r g'8 f r d
c4. d8~ d2
bes4-. bes4-. a'2~
a8 g f e cis2
\bar "||"
r8 a' r gis a4-. r8 a
r8 gis a4-.
a,8 d f a aes2.. e8~ e2 r
r8 g r fis g4-. r8 g
r8 fis g4-.
a,8 cis e g f2.. d8
r1^"Break"
%\bar "||"
\break
\repeat volta 2 {s1^"SOLOS"
\repeat unfold 7 {s1} \break
\repeat unfold 8 {s1}\break
\repeat unfold 8 {s1}\break
\repeat unfold 8 {s1}
}
	}
}


theme=\staffViolon


\include "utils/books.ly"



accords = {\transpose d g {\accords}}
theme = {\transpose d g {\staffViolon}}


\header {
	title = "Bernies Tunes (Gm)" 
 	composer = "McCoy Tyner"
 	tagline = ""

}


\bookOutputName "bernies_tune_chant"


\include "utils/books.ly"