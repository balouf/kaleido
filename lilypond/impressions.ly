% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"


#(set-global-staff-size 25)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Impressions" 
 	composer = "Coltrane"
 	tagline = ""

}


accords = \chords {\repeat volta 2 {
	\repeat percent 4 {d1:min7}
	\repeat percent 4 {d1:min7} \break}
\repeat percent 4 {ees1:min7}
\repeat percent 4 {ees1:min7}
	\repeat percent 4 {d1:min7}
	\repeat percent 4 {d1:min7}
	\repeat volta 2 {
	\repeat percent 4 {d1:min7}
	\repeat percent 4 {d1:min7} \break}
\repeat percent 4 {ees1:min7}
\repeat percent 4 {ees1:min7}
	\repeat percent 4 {d1:min7}
	\repeat percent 4 {d1:min7}
}

staffViolon = \new Staff {
	\time 4/4
	\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 188 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here 

	\bar ".|:" 
	\repeat volta 2 {
	d1~ d2 e8 g e d~
	d1~ d4. e8 f4 g a c~ c8 e,4 d8~
	d2 b4 d8 a~ a1~ a \break}
	ees'~ ees4. des8 ges4 f8 ees~
	ees1~ ees4. f8 ges4 aes
	bes des~ des8 f,4 ees8~
	ees2 c4 ees8 bes~ bes1~ bes \break
	d1~ d2 e8 g e d~
	d1~ d4. e8 f4 g a c~ c8 e,4 d8~
	d2 b4 d8 a~ a1~ a
	\break
	\mark \markup { \column
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 \repeat volta 2 {s1 s s s s s s s \break }
s s s s s s s s \break 
s s s s s s s s
}
}

theme=\staffViolon

\include "utils/books.ly"