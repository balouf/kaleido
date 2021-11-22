\version "2.22.0"

#(set-global-staff-size 20)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 



\header {
	title = "Birdland" 
 	composer = "Zawinul"
 	tagline = ""

}

accords = \chords {
	\partial 8 s8
	\repeat volta 3 {
		\mark \markup {N.C.} s1 s1 s1
	}
	\alternative {
		{s1}
		{s1}
	}
	\repeat volta 2 {
		\repeat percent 7 {s1}
	}
	\alternative {
		{s1}
		{s2. s8 g:m}
	}
	s4 f2:/g s8 f:/bes
	s4 ees2:/bes s8 d:m7
	s2. s8 f:/c
	s4 c:m7 s4. f8:/b
	s4 e:m s4. g8:m/c
	s4 f2.:/ees
	e4:m f8 ges g4 e:m
	g4:m/c f2.:/c
	\repeat percent 5 {g1}
	\repeat volta 2 {
		\repeat percent 7 {g1\mark \markup{pedal}}
	}
	\alternative {
		{s1}
		{s1}
	}
	\repeat percent 3 {s1}
	g1
	c4 g2.
	\repeat percent 3 {s1}
	c4 g2 b4:m7.5-
	s1
	s1
	\repeat volta 2 {
		g4 b:m e:m s8 g:/b
		s4 c:maj cis:m7.5- s8 b:m7
		s2 e:7
		a8:m7 g4:/b c:6 c:/d g8
		s4 b:m e:m s8 c:6
		s4 cis:m7.5- d:7sus s8 c:maj
		s1
	}
		\alternative {
		{s8 a4:m c:maj/e a:m7/d s8}
		{s8 a4:m c:maj/e a:m7/d g8}
		}
	s4 b:m e:m s8 g:/d
	s4 cis:m7.5- c:9 s8 b:m7
	s2 e:7
	a8:m g4:/b c:6 c:/d g8
	s4 b:m e:m s8 a:m7/d
	s4 cis:m7.5- c:9 s8 b:m7
	s2 e:7
	a8:m g4:/b c:6 c4.:/d
	\repeat percent 4 {g1}
	\repeat volta 3 {\repeat percent 4 {g1}}
	\repeat volta 7 {
		g4:7 ges:7 f:7 e:7
	}
		\alternative {
		{ees:7 d:7 des:7 c:7}
		{ees:7 d:7 des:7 c8:7 g s1 s1}
		}\break		
s1\coda
\repeat volta 2 {
g4 g:/b e:m s8 g:/b
s4 c:maj cis:m7.5- s4
b2:m7 e:7
a8:m g:/b r8 c4:6 c:/d g8
r4 g:/b e:m r8 c:6
r4 cis:m7.5- g:/d r8 g:/c
s1
g8:/c a:m r8 e:m7 r c:/d r g
}
\repeat volta 2 {
s4 b:m e:m r8 g:/d
r4 cis:m7.5- c:7 r
b2:m7 e:7
a8:m g:/b r8 c:6 r c:/d r g
}

}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 140
	\set Staff.instrumentName = ""
	\set Staff.midiInstrument = "violin"
	\key g \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures

\partial 8 b8~
\repeat volta 3 {
	b2 c4. d8~
	d1
	b2 c4 d8 g~
}
	\alternative {
		{g1}
		{g2. r8 bes~}
	}
\repeat volta 2 {
	\mark \markup { \musicglyph "scripts.segno" }
	bes8 a bes a g4 e8 g~
	g4 e g a8 bes~
	bes4 a g e8 d~
	d g4. r4 r8 bes~
	bes c bes a g4 e8 g~
	g4 e g a8 bes~
	bes4 a g e8 d~
}
	\alternative {
		{d8 g4. r4 r8 bes\laissezVibrer}
		{d,8 g4. r4 r8 bes~}
		}
bes4 a8 a r4 r8 a~
a4 g8 g r4 r8 a~
a4 f8 f r4 r8 a~
a4 g8 g r4 r8 a~
a4 g8 g r4 r8 bes~
bes4 a2.
r8 g a bes b4 g
bes a2.
g1~ g1~ g1~ g1~
g2 r8 c, d f~
\repeat volta 2 {
	f4 d c r8 c~
	c r c r r c d f~
	f4 d c r8 b~
	b r b4 r8 c d f~
	f4 d c r8 c~
	c r r4 r8 c d f~\coda
	f4 d c r8 b~
}
	\alternative {
		{b r b4 r8 c d f\laissezVibrer}
		{b,8 \repeatTie r b4 r8 c'8 d f~}
	}
f4 d c r8 c~
c r c4 r8 c d f~
f4 d c r8 b~
b4. b8~ b4. b8
c4 b8 d~ d4 d~
d1~
d1
b4. b8~ b4. b8
c4 b8 d~ d4 f~
f1~
f2~ f4. r8
\repeat volta 2 {
	b,4 d g, r8 g~
	g4 b g r8 d'8~
	d1
	c8 b4 a8~ a g4 b8~
	b4 d g, r8 a~
	a4 b g r8 d'~
	d1
}
	\alternative {
		{d8 e4 b8~ b g4 r8}
		{d'8 e4 b8~ b g4 b8~}
	}
b4 d g r8 g,~
g4 b e r8 d~
d1
c8 b4 a8~ a g4 b8~
b4 d g r8 g,~
g4 b e r8 d~
d1
c8 b4 a8~ a g4.
g1~ g~ g~
g4 r r d8 e
\repeat volta 3 {
	g4^"3 Times" a ais8 b d, e
	g g r4 r b8 g~
	g1
	r4 d'8 bes~ bes4 d,8 e
	}
\repeat volta 7 {
	d'4 des c b
}
	\alternative {
		{bes a aes g}
		{bes a aes g8 g~ g1~ g2. r8 bes\laissezVibrer-"D.S. al Coda" \bar"||"}
	}\break

f4\coda d c r8 b'~
\repeat volta 2 {
b4 d g, r8 g~
g4 b g r8 d'~
d1
c8 b r a r g r b~
b4 d g, r8 a~
a4 b g r8 d'~
d1
d8 e r b r g r b~\mark \markup {repeat and fade}
}
\repeat volta 2 {
b4 d g r8 g,~
g4 b e r8 d~
d1
c8 b r a r g r b~
}




}}



\include "utils/books.ly"