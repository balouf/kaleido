% Created on Sun Mar 14 14:57:14 CET 2010

\version "2.20.0"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 




\header {

	title = "All Blues" 

 	composer = "Miles Davis"

 	tagline = ""

}



accords = \chords {

	g2.:7 s s s

	\repeat volta 2 {

		\repeat unfold 12 {s2.}
	}

	\repeat volta 2 {

		g:7 s s s \break

		c:7 s g:7 s \break

		d:7.9+ es4.:7.9+ d:7.9+ g2.:7 s
	}
}


theme = \new Staff {

		\time 6/8

	\tempo 4 = 90

	\set Staff.midiInstrument = "violin"

	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
		\accidentalStyle modern-cautionary

 % Type notes here

 r2. r r r2 r8. d16 \break

 \repeat volta 2 {

 	 <<{  \stemDown

 	 	 \repeat unfold 4 {<b d>4 <c e>8__ <d f>4 <c e>8__}

 	 	 \break

 	 \repeat unfold 2 {<bes d>4 <c e>8__ <d f>4 <c e>8__}

 	 \repeat unfold 2 {<b d>4 <c e>8__ <d f>4 <c e>8__}

 	 \break

 	 r4. <c f> <cis fis> <c f>

 	 <c f> <d g> <c f> <b e>
 	 }\\

 	 { \stemUp \tieUp

 	 b'4.~ b4~ b16 d, b'8~ b16 c b8~ b4~ b16 d,

 	 b' c b4~ b~ b16 d, b'4.~ b4 r8

 	 a4 bes8 c4 d8 c4 bes8 a4~ a16 d, b'2.~ b4. r4 r16 gis

 	 a2. bes a4. b a g }>>
 }

		\break

		\repeat volta 2 {

		\repeat unfold 12 {s2.}
		}
}
}


\include "utils/books.ly"