% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 29)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Dance Cadaverous" 
 	composer = "Wayne Shorter"
 	tagline = ""

}


accords = \chords {
%		\set chordNameExceptions = #chExceptions
	c2.:maj7.3- s %m7.5+.9+ % un accord
	des:maj7.3- s % un deuxiÃƒÂ¨me
	d:m7.5- s g:7.5+.9+ s
	c2.:maj7.3- s
	des:maj7.3- s
	g:m s s s
	\break
	aes:maj7 s
	%	des:7.9+ s s s
	des:7 s e:7.9+ s
	a:min7 s
	\break
	ges:m7.5- s
	ces:7.5+.9+ s 
	b:m/e s d:m7.5- g:7.9-
	\break
	c2.:maj7.3- s %m7.5+.9+ % un accord
	des:maj7.3- s % un deuxiÃƒÂ¨me
	d:m7.5- s g:7.5+.9+ s
	c2.:maj7.3- s
	bes:m7 es:7.9- 
	aes:maj7.5+ s s s
	\break
	d:m7.5- s
	%	des:7.9+ s s s
	des:7 s e:7.9+ s
	a:min7 s
	\break
	es:m s
	d:m7.5- d:dim7 des:maj7.11+ s s s 	
}

staffViolon = \new Staff {
	\time 3/4
	\tempo 2. = 72 
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures

b'2.~b4 g b
c2.~ c2 bes4
g2.~ g~ g~ g2 r4
b2.~b2 g8 b
c2.~ c2 bes4
g2.~ g~ g r2 c,4 \bar"||"
g'2.~ g2 f8 g
aes2.~ aes2 r8 g
aes[ g]~ g aes,~ aes[ aes']~ aes4. g d2.~ d2.
aes'2.~ aes4. c8 r4
g2.~ g2 b,4
e2.~ e~ e~ e2 r4 \bar"||"
b'2.~b4 g b
c2.~ c2 bes4
g2.~ g~ g g4 b d
b2.~b2 g8 b
c2.~ c2 bes4
g2.~ g~ g r2 c,4 \bar"||"
g'2.~ g2 f8 g
aes2.~ aes2 r8 g
aes[ g]~ g aes,~ aes[ aes']~ aes4. g d2.~ d2.
es2.~ es2 f8 es c2.~ c2 r4
<<{c'2.~ c~ c~ c4}{es2.~ es~ es~ es4}>> r r \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme=\staffViolon


\include "utils/books.ly"