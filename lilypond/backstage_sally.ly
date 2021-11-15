% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 




\header {
	title = "Backstage Sally" 
 	composer = "Wayne Shorter"
 	tagline = ""

}

%% Attention, input en Bb
accordsBb = \chords {
		\partial 8 s8
		\repeat volta 2 {
		g2:m6 e:7.9+
		a:7.5+ d:7.9+
		f:m11 bes:13
		d:m11 g:13
		c:m6 bes:7
		a:7.5+ aes:7
		g:m7 c:7
		f:m7 bes:7
		e:7.9+ a:7
		d:7.9+ g:7
		c:7.9+ f:7
		a:m7.9.11 d:7.5+
		g:m6 e:7.9+
		a:7.5+ d:7.9+
		g4:m bes2.:13
		es8:maj7 aes:13 s2.
		}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÆ’Ã‚Â¨me
}

accords = \transpose c' bes {\accordsBb} 

staffViolonBb = \new Staff {
	\time 4/4
	\tempo 4 = 120 
	\set Staff.midiInstrument = "violin"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\partial 8 d'32 c bes a
\repeat volta 2 {
	g4-. r r \tuplet 3/2 {r8 g bes}
	\tuplet 3/2 {c d4} \tuplet 3/2 {bes8 c4} \tuplet 3/2 {g8 bes4~} \tuplet 3/2 {bes8 g f}
	\once \override BendAfter.extra-offset = #'(-4.9 . -1.2)   
	bes4-\bendAfter #2 g-. r \tuplet 3/2 {r8 e d}
	g4 <e \parenthesize cis>-. r2
	g4-\bendAfter #-1 r r \tuplet 3/2 {r8 g bes}
	\tuplet 3/2 {des c4} \tuplet 3/2 {c8 bes4} \tuplet 3/2 {des8 c bes~} \tuplet 3/2 {bes g f}
	\once \override BendAfter.extra-offset = #'(-4.9 . -1.2)   
	bes4-\bendAfter #2 g-. r \tuplet 3/2 {r8 es d}
	g4 es-. r \tuplet 3/2 {r8 e' g}
	\tuplet 3/2 {<bes \parenthesize e,> <a \parenthesize dis,>4}
	\tuplet 3/2 {<a \parenthesize d,>8 <aes \parenthesize des,>4}
	\tuplet 3/2 {<aes \parenthesize des,>8 <g \parenthesize c,>4}
	\tuplet 3/2 {g8-. d f}
	\tuplet 3/2 {<aes \parenthesize d,> <g \parenthesize des>4}
	\tuplet 3/2 {<g \parenthesize des>8 <fis \parenthesize c>4}
	\tuplet 3/2 {<fis \parenthesize c>8 <f \parenthesize b,>4}
	\tuplet 3/2 {f8-. c es}
	\tuplet 3/2 {f16 ges f} es8 f c es f es d~
	d2..~\< d32\> c bes a\!
	g4-. r r \tuplet 3/2 {r8 g bes}
	\tuplet 3/2 {c d4} \tuplet 3/2 {bes8 c4} \tuplet 3/2 {g8 bes4~} \tuplet 3/2 {bes8 g f}
	g4-. cis16 d c bes c8 bes g f
	g <bes \parenthesize f'>~ <bes f'>2.^"Fin"
}
r8^"Background line (optional)" g' f-. d c4 bes8 g
c4 bes8 g c4 bes-.
r8 g' f-. d c4 bes8 g
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d'4-\bendAfter #2
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d4-\bendAfter #2
c16 des c bes g4-.
r8 g' f-. d c4 bes8 g
c4 bes8 g c4 bes-.
r8 g' f-. d c4 bes8 g
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d'4-\bendAfter #2
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d4-\bendAfter #2
c16 des c bes g8-- g-.
R1*4
r8 g' f-. d c4 bes8 g
c4 bes8 g c4 bes-.
r8 g' f-. d c4 bes8 g
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d'4-\bendAfter #2
\once \override BendAfter.extra-offset = #'(-4.9 . -1.2) d4-\bendAfter #2
c16 des c bes g8-- g-.
\bar "||"
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \transpose c' bes {\staffViolonBb} 

\include "utils/books.ly"