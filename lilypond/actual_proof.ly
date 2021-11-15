% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.17.97"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Actual Proof" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat volta 2 {d1:m7 s}
	\repeat volta 2 {
		d:m7 s s s1 as:maj7.11+/c \break
		b2:7.5+.9+ b:13 b1:sus13 s
		f:m7.5-
		f4:m7.5- cis8.:sus7 dis8.:sus7/c e:m7 fis:m7
		b1:maj9 s2. s8. f16:maj7.11+ \break
\time 5/4
s1 s4
\time 4/4
g1:7
\time 3/4
s2 s4	
	}
	\repeat volta 2 {
		d1:m7 s
	}
	cis4:9 s8. b:maj9 g:maj7/fis a:maj7/e
	s1  s2. s8. f16:maj7.11+
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 130 
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
\partial 4 r4
\repeat volta 2 {r1^"Intro" r}
\break
\repeat volta 2 {
	r1 r
	r4 r8 a'~ a c-. g'4~ g f16[ g r f]~ f2~ f2. r4
	r1 r4 r8 c~ c cis-. gis'4~ gis gis 16[ a r b]~ b2~
	b4. es,8-. bes'8. b16 as4~
	as8 r gis[ r16 ais]~ ais[ r b8] r16 cis8.
	cis1~ cis2. b16 cis r b
	\time 5/4
	\once \override Glissando.bound-details.left.Y = #-2
	r2^"N.C." r16 a g a g8-. f-. \glissando e4
	\time 4/4
	f,8[ r16 g]~ g r  <<{bes( b bes8)}{f~ f}>> g16 f d bes 8 r16
	\time 3/4
	f'8[ r16 g]~ g r <<{bes( b bes8)}{f~ f}>>
	\once \override TextScript.extra-offset = #'( 2 . -3.5 )
	r \coda
	\time 4/4
}
\break
\repeat volta 2
{
	\mark \markup {\musicglyph #"scripts.coda"}
	r1^"Flute solo" r 
}
r4^"On Cue" gis'8[ r16 ais]~ ais[ r b8] r16 cis8 r16
r1^"N.C." r2 r4 b16 cis r b~ b2-\bendAfter #-4 r
\bar "|."	}
}

theme=\staffViolon

suffix=""

\include "utils/books.ly"