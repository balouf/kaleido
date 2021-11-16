% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")
\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Corners For Herbie" 
 	composer = "Marcus Miller"
 	tagline = ""

}


accords = \chords {
\partial 4 r4  \repeat volta 3 {e1:min7 c:maj7/g 
e:min7 c:min6.9 e1:min7 c:maj7/g 
e:min7 c:min7+ e4.:min7 g2:min7 bes8:min7 r4. cis2:min7 r8}
\repeat volta 5 {
	\repeat unfold 2 {
	e1:min7 c:maj7/g 
	e:min7 c:min6.9 e1:min7 c:maj7/g 
	e:min7 c:min7+}
	e4.:min7 g2:min7 bes8:min7
}
\alternative {
	{ r4. cis2:min7 r8}
	{ r4. cis2:min7 r8}
		}
}
theme = \new Staff {
	\time 4/4
	\tempo 4 = 114 
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here 

	\partial 4 e8 g 
	\repeat volta 3 { a4^\markup {\center-align \raise #4 {{X3}} } a8 g a4 g8 a
		b a~ a2 e8 g
		a4 r8 fis e8. d16~ d8 c
		r g'~ g2 g8 e
		a4 a8 g a4 g8 a
		b a~ a4 g8 fis e d b e e2.~
		e4 r4 r8 a,16 bes d ees f g
		a8. g16 a8 c~ c4 a16 c ees8~
		ees c ees bes~ bes4 e,8 g
} \break
\repeat volta 5 {
\repeat unfold 8 {r1} \bar"||" \break
\repeat unfold 8 {r1} \break
\override NoteHead.style = #'cross
b4. b8~ b4. b8~
}
\alternative {
	{b4. b8~ b2}
	{b4. b8~ b4
	\revert NoteHead.style
	e,8 g}
	}
		a4 a8 g a4 g8 a
		b a~ a2 e8 g
		a4 r8 fis e8. d16~ d8 c
		r g'~ g2 g8 e
		a4 a8 g a4 g8 a
		b a~ a4 g8 fis e d b e e2.~
		e4 r r8 g r16 bes8.
		d4. d8 r c bes c
		bes d4.~ d8 g, r16 bes8.
		d4. d8~ d c bes g~ g1
		d4 d8 f r f r c r_"rit." c ees2.-\fermata e1-\fermata \bar "|."
	}
}


\include "utils/books.ly"