% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "One Note Samba" 
 	composer = "A.C. Jobim"
 	tagline = ""

}


accords = \chords {
	s1
	\repeat volta 2 {
	d:m7 des:7 c:m7}
	\alternative {{b:7.11+}{b:7.11+}}
	f:m7 bes:7 es:maj7 aes:7
	d:m7 des:7 c2:m7 b:7.11+ bes1:maj7
	es:m7 aes:7 des:maj7 des:maj7
	des:m7 ges:7 ces:maj7 c2:m7.5- f:7
	\repeat volta 2 {
	d1:m7 des:7 c:m7}
	\alternative {{b:7.11+}{b:7.11+}}
	f:m7 bes:7 es:maj7 aes:7
	des:maj7 c:7 ces2..:maj7 bes8 s1 
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 192 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
r2 r8 f4 f8
\repeat volta 2 {
f4 f8 f r f4 f8~ f4. f8 r f4 f8 f4 f8 f r f4 f8~}
\alternative{{f2 r8 f4 f8}
{f2\repeatTie r8 bes4 bes8}}
\bar "||"
bes4 bes8 bes r bes4 bes8
r bes bes4~ bes8 bes4 bes8
bes4 bes8 bes r bes4 bes8~
bes2 r8 f4 f8
f4 f8 f r f4 f8
r8 f4 f8 r f f4
f4 f8 f r f4 bes8~ bes2. r4
\bar "||"
bes8 c des es des c bes aes
ges f es des c des es f
c4. bes8 r c des f
c4. bes8 r2
aes'8 bes ces des ces bes aes ges
fes es des ces bes ces des es
bes4. aes8 r bes ces es
ges4. f8 r f4 f8
\repeat volta 2 {
f4 f8 f r f4 f8~ f4. f8 r f4 f8 f4 f8 f r f4 f8~}
\alternative{{f2 r8 f4 f8}
{f2\repeatTie r8 bes4 bes8}}
\bar "||"
bes4 bes8 bes r bes4 bes8
r bes bes4~ bes8 bes4 bes8
bes4 bes8 bes r bes4 bes8~
bes2 r8 bes4 bes8
bes4 bes8 bes r bes4 bes8
r bes4 bes8 bes4 bes~ 
bes bes8 bes r bes4 bes8
r1
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon


\include "utils/books.ly"


\header {
	title = "One Note Samba (Am)" 
}

\bookOutputName "one_note_samba_Am"


accords = \transpose c' g \accords
theme = \transpose c' g \staffViolon


\include "utils/books.ly"



