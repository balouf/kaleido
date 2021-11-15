% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Bonnie's Blue" 
 	composer = "David Liebman"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat volta 2 {
		\repeat percent 3 {f1:7}
		b:7 bes:7 ges:7 f:7 a:7 aes:7 ges:7 bes:7
	}
	\alternative {{aes4.:7 g:7 f4:7}{aes4.:7 g:7 f4:7}}
	\repeat volta 2 {
		\repeat percent 3 {f1:7} b:7 \break
		bes:7 ges:7 f:7 a:7 \break 
		aes:7 ges:7 bes:7 aes4.:7 g:7 f4:7
	}
	aes4.:7 g:7 f4:7sus4
}

theme = \new Staff {
	\time 4/4
	\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 163 
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "tenor sax"
	\transposition bes,,
	\key bes \major
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here
 \partial 4 r8 a'~-> (
 \repeat volta 2 {
 a bes c d ees d ees ees~ ees4~ ees8 d c[ a~] a )
 a~-> (a bes c d ees d ees ees~ ees4~ ees8 d des4 b8 a aes) r r4 r
 aes16( bes c d ees4~ ees8 d des bes \tuplet 3/2 {aes ges e}
 a bes c d ees d ees ees~ ees4~ ees8 d cis4~ cis8 a16 b
 aes8 des ges ees~ ees4 ) r8
 e~-> ( e c16 b \tuplet 3/2 {bes8 des, ges} e2 )
 d8 ( c f16 c g' c, aes' g f8~ f4 )
 }
		\alternative {
			{r2 r4 a->\laissezVibrer
			\mark \markup {\musicglyph "scripts.coda" } 
}
			{c4. b8-.~ b4 r \bar "|."}
		}
		\break
		\repeat volta 2 { \bar ".|:-||"
		\repeat unfold 11 {s1}
		\override NoteHead.style = #'cross
		bes4. bes8~ bes4 bes\laissezVibrer
		\revert NoteHead.style
		}
\break
\mark \markup {\musicglyph "scripts.coda" } 
c4. b8-.~ b4 a~ a1-\fermata
\bar "|."
}
}


\include "utils/books.ly"