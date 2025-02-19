% Created on Sun Mar 14 14:57:14 CET 2010
\version "2.22.0"

#(set-global-staff-size 25)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Dancing on Bird's Grave" 
 	composer = "David Liebman"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 3 {
		f1:maj7 c2:min7 f:7.11+ b:min7 e:7.9-
		a:min7 d:7.9+ ees1:maj7.11+
		ees2:min7 aes:7 d1:maj7 cis2:min7 fis:7.9+
		c1:maj7 bes2:min7 ees:7.9- a1:maj7.11+ 
	}
	\alternative {
		{
			e:7.9+ f:min7 bes:7.9+ g:min7 c:7.9+
		}
		{
			b2:min7.5- e:7 a1:m7 d:7.11+ g:maj7.11+ s
			aes:m7 des:7.9+ d:m7 g:7.9+
			fis:m7.5- b:7.9- e:m7 fis:7.9-
		}
		{
			e:7.9+ aes2:m7 des:7.9+ d:m7 g:7.9+ ges1:7.11+ s
		}
	}
	\repeat volta 3 {
		f1:maj7 c2:min7 f:7.11+ b:min7 e:7.9-
		a:min7 d:7.9+ \break ees1:maj7.11+
		ees2:min7 aes:7 d1:maj7 cis2:min7 fis:7.9+
		c1:maj7 bes2:min7 ees:7.9- a1:maj7.11+ 
	}
	\alternative {
		{
			e:7.9+ f:min7 bes:7.9+ g:min7 c:7.9+
		}
		{
			b2:min7.5- e:7 a1:m7 d:7.11+ g:maj7.11+ s
			aes:m7 des:7.9+ d:m7 g:7.9+
			fis:m7.5- b:7.9- e:m7 fis:7.9-
		}
		{
			e:7.9+ aes2:m7 des:7.9+ d:m7 g:7.9+ ges1:7.11+ s
		}
	}
	g:aug7.4+ f2:aug7.4+ des4:aug7.4+ b:aug7.4+ e:maj7
}

theme = \new Staff {
	\time 4/4
	\override Score.MetronomeMark.stencil = ##f
	%\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "trumpet"
	\transposition bes
	\key c \major
	\tempo 4 = 220 
	\clef treble
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here
\partial 8 e8
	\repeat volta 3 {
	f e f g a c d4
	f8 b, c ees <<{d2}{b}>>
	e8 dis d fis <<{cis2}{ais}>>
	r8 d \tuplet 3/2 {b g e} fis16 gis f8~ f ees
	<<{d ees g bes d4.}{a,8 bes d f a4.}>> c8
	des f ees d c4 bes a1
	g8 gis ais b \tuplet 3/2 {e16 d cis} d8~ d[ ais] \break
	\bar "||" b1 bes8 e, f aes g4. ges16 e
	dis2.~ dis8 cis
	}
	\alternative {
		{
		d16 f gis c <<{bes4~ bes4.}{g4~ g4.}>> gis8
		g4 ees8 c ees g bes des~ des2.~ des8 b
		c f, fis <<{c~ c b bes4}{a'8~ a aes g4}>>
		r4
		\override NoteHead.style = #'cross
		b2.
		\revert NoteHead.style
		\break
		}
		{
		d,16 f a ais e'4~ e4. d8
		c2 e,8 g b gis~ gis2.~ gis8
		<<{fis~ fis1~ fis}{cis8~ cis1~ cis}>>
		ees4^\markup {Latin} des8 b bes b d g~
		g2 aes8 g4 ges8 e4 g8 ges f a c e
		<<{f, e ees2.}{a8 bes b2.}>>
		b4 \tuplet 3/2 {gis8 a b} c e b' gis~
		gis2.~ gis8 fis g fis g fis a g16 fis
		<<{ais,4~ ais2.}{d,4 cis2.}>> r8 e
		\break
		}
		{
			d16 g gis c <<{bes4~ bes4.}{g4~ g4.}>> gis8
			ges aes ees ges <<{g2}{e4 d}>>
			e8^\markup {\musicglyph "scripts.coda" } f c e
			<<{ees4 b c1~ c}{b4 aes bes1~ bes}>> \bar "|."
		}
	}
	\pageBreak
	\repeat volta 3 { \bar ".|:-||"
		\repeat unfold 8 {s1} \bar "||" \break
		\repeat unfold 3 {s}
	}
	\alternative {
		{
			\repeat unfold 5 {s} \break
		}
		{
			\repeat unfold 5 {s} \bar "||" \break
			\repeat unfold 8 {s} \break
		}
		{
			\repeat unfold 5 {s}
	}}
	\break
	dis8^\markup {\musicglyph "scripts.coda" } f b, d cis2 cis8 dis a c b4 a gis1-\fermata
	\bar "|."
	}
}

\include "utils/books.ly"