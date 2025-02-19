% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Whisper Not" 
 	composer = "Benny Golson"
 	tagline = ""

}


accords = \chords {
	\partial 4 s4
	\repeat volta 2 {c2.:m c4:m/bes
	a2.:m7.5- d4:7.9-
	g2:m g:m7/f
	e:m7.5- a:7.9-
	d:m d:m7/c
	}
	\alternative {{e:m7.5- a:7.9-
	d:m7 e:m7 f:m7 g:7.9-}{e:m7.5- a:7.9-
	d:m7 e:m7 f:m7 bes:7}}
	a1:m7.5- d:7.9-
	g:m g:m/f
	e:m7.5- a:7.9-
	d:m7.5- g:7.9-
	c2.:m c4:m7/bes
	a2.:m7.5- d4:7.9-
	g2:m g:m7/f
	e:m7.5- a:7.9-
	d:m7 d:m7/c
        e:m7.5- aes:7.9- d:m7 d:m7/c aes:7 g:7
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÆ’Ã‚Â¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 132 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 4 c8 g'~
\repeat volta 2 {
	g2. c,8 g'~ g2. a8 bes~ \break 
	bes2. \tuplet 3/2 {a16 bes a} g8 bes2. \tuplet 3/2 {a16 bes a} g8
	a4 d8 g,~ g16 aes g f g4~
}
\alternative {{g2. f8 d~ d2 e2 f2. c8 g'\laissezVibrer}{g2.\repeatTie e8 f~ f2 g2 aes1}}
\bar "||" \mark \markup { \musicglyph "scripts.segno" }
r4 r8 g c8. g16 \tuplet 3/2 {es8c fis~} fis2 g4 a8 bes~
bes2~ \tuplet 3/2 {bes4 c a} bes2~ \tuplet 3/2 {bes4 c a}
bes2 r8 d, g bes <<{bes2. a4
aes2}{fis4 f f e c2}>> r8 c f g \break  <<{aes2.}{e4 es es}>>
c8 g'~ \bar "||"
	g2. c,8 g'~ g2. a8 bes~ \break 
	bes2. \tuplet 3/2 {a16 bes a} g8 bes2. \tuplet 3/2 {a16 bes a} g8
	a4 d8 g,~ g16 aes g f g4~ g2. f8 d~\mark \markup {\musicglyph "scripts.coda" } d1~ d \bar "|."
%c4^\markup{Essai} cis c cis
%c cis c c
\break
\mark \markup { \column % vspace avant solos si besoin
  { " " 
  " "}
 } 
 \repeat volta 2 {r4^"After solos, March-like"  \tuplet 3/2 {c8 es g} c8.-. es16 c8.-. g16
 	 c8.-. g16 es8.-. c16 fis2
 	 r4 \tuplet 3/2 {bes,8 d g} bes8.-. d16 bes8.-. g16
 	 bes 8.-. d,16 g8.-. bes16 cis,8.-. e16 a8 g
 	 a f r4 r8 a, d8.-. f16 aes8 f g4~ g8 a, d8.-. f16
 }
 \alternative {{g8 d f2. r2 \tuplet 3/2 {g8 aes g~} g4}{g8 d f2.~ f2 r^"D.S. al Coda"}}
 \break
 \mark \markup {\musicglyph "scripts.coda" }d2. \repeatTie a'8 g~ g2. \tuplet 3/2 {f16 g f} e8
 f2. c'8 bes~ bes2 e,8.-. f16 cis8.-. e16 d2.. e8~ e1\fermata \bar "|." \break
r4^"Counter Melody on A" g,8 d'~ d2~ d4 g,8 d'~ d4 c8 bes~ bes4 d8 g~ g2 r4 d8 cis~ cis2 \bar "|." 
	}
}

theme = \staffViolon

\include "utils/books.ly"
