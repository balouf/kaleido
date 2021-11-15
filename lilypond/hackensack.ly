% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.18.2"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Hackensack" 
 	composer = "Monk"
 	tagline = ""

}


accords = \chords {
  \partial 8 s8
  \repeat volta 2 {
    f1: bes:7 f d:7 g:m7 c:7 f
  }
  \alternative {{g2:m7 c:7}{f1:7}}
  bes:7 b:dim f: d:7 g:7 g:7 g2:m7 c:7 aes:m7 des:7
  f1: bes:7 f d:7 g:m7 c:7 f g2:m7 c:7
  }
theme = \new Staff {
	\time 4/4
	\tempo 4 = 192
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
%\set Timing.beamExceptions = #'()
\partial 8 d8
\repeat volta 2 {
  c f a c~ c4 bes8 f aes4 r r r8 d,
  c f a c~ c4 bes8 f \tuplet 3/2 {aes g ges} f es' r4 r8 d,
  c f a c~ c bes4 d,8 c f a c~ c bes4 f8 a f d c f4 d
	}
	\alternative {{r2 r4 r8 d} {r2 r4 r8 f~}}
	\bar "||" \break
	f f4 f8 f4 d r2 f8 f f f f4 r r r8 c~ c4 r r r8 f~
	f f4 f8 f4 d r2 r4 r8 c'~ 
	c c bes g c4 r8 des~ des des ces aes des4 r8 d,
	\bar "||" \break
  c f a c~ c4 bes8 f aes4 r r r8 d,
  c f a c~ c4 bes8 f \tuplet 3/2 {aes g ges} f es' r4 r8 d,
  c f a c~ c bes4 d,8 c f a c~ c bes4 f8 a f d c f4 d
r1 \bar "|."
	}
}


\include "utils/books.ly"