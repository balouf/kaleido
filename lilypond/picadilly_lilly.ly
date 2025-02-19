% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Picadilly Lilly" 
 	composer = "David Liebman"
 	tagline = ""

}


accords = \chords {
	\repeat volta 2 {e1:maj7 s a:min s c:min bes:7.9-}
	\alternative {{e:maj7 f:7.9-}{e:maj7 s}}
	a:min s g:7.6- s a:min s g:7.6- s
	c:min/f es:min/aes c2:7 b:7.9+ s1
	e:maj7 a:min aes:maj7 b:7.9-
	e2:maj7 g:maj7 bes:maj7 aes:maj7 e2.:maj7 a4:7.4+^3 s1
	\repeat volta 2 {e1:maj7 s a:min s c:min bes:7.9-}
	\alternative {{e:maj7 f:7.9-}{e:maj7 s}}
	a:min s g:7.6- s a:min s g:7.6- s
	\break
	c:min/f es:min/aes c2:7 b:7.9+ s1
	e:maj7 a:min aes:maj7 b:7.9-
	\break
	e2:maj7 g:maj7 bes:maj7 aes:maj7 e2.:maj7 a4:7.4+^3 s1
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 184 
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "violin"
	\key c \major
	\clef treble
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2
{gis'8( b cis dis~ dis2)
dis4( cis8 b ais gis~ gis4)
e8( g a b~ b2)
b4( a8 g fis e~ e4)
c8( es f g~ g2)
es4( d8 c b4 a
}
\alternative
{
	{gis1) r}
	{gis8 dis'~ dis2.~ dis d8( g}
}
\bar "||" fis1)
d8( g fis g \tuplet 3/2 {fis d c} a' d b1~ b2.)
es,8( g fis1) d8( g fis g \tuplet 3/2 {fis d c} a' d b1~ b2.)
c,8( f \bar "||" d2. es8 aes f1 g8[ c-.~] c) a~ a2~ a1 \bar "||"
gis8( b cis dis~ dis2)
b4( a8 g fis4 e)
c8( es f g~ g2)
es4( d8 c b4 a)
gis4.( dis'8 b4. fis'8 d a'~ a4 g8 c,~ c4 b4. fis'8) r4 dis~ dis1 \bar"||" \break
% Solo 
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
\bar ".|:-||"
\repeat volta 2
{
	\repeat percent 2 {s1}
	\repeat percent 2 {s1}
	\repeat unfold 2 {s1}
}
\alternative
{
	{\repeat percent 2 {s1}}
	{\repeat unfold 2 {s1}}
} \break
\bar "||" \repeat unfold 4 {\repeat percent 2 {s}} \bar "||"
\repeat unfold 4 {s} \bar "||" \break
\repeat unfold 8 {s} \bar "|."
}
}


theme = \staffViolon

\include "utils/books.ly"