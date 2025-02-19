% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Funk In Deep Freeze" 
 	composer = "Mobley"
 	tagline = ""

}



accords = \chords {
	\partial 2 s2
	\repeat volta 2 {
	f2:m7 s4 s8 des8:7 s2 s4 s8 g8:m7.5- s2 c4:7 s8 f8:m7 s1
	bes4:7 s8 es:7 s4 aes:7 s des:7 s s8 g:m7.5- s4 s8 c2:7 f8:m7
	}
	\alternative {{s1}{s1}}
	c:m7 f:7 bes:maj7 bes:maj7
	es:m7 aes:7 des:maj7 g2:m7.5- c:7
	f2:m7 s4 s8 des8:7 s2 s4 s8 g8:m7.5- s2 c4:7 s8 f8:m7 s1
	bes4:7 s8 es:7 s4 aes:7 s des:7 s s8 g:m7.5- s4 s8 c2:7 f8:m7 s1
	\repeat volta 2 {
	f1:m7 des:7 g2:m7.5- c:7 f:m7 b:7.11+
	bes:7 es:7 aes:7 des:7 g:m7.5- c:7 f1:m7
	}
	c:m7 f:7 bes:maj7 bes:maj7
	es:m7 aes:7 des:maj7 g2:m7.5- c:7
	f1:m7 des:7 g2:m7.5- c:7 f:m7 b:7.11+
	bes:7 es:7 aes:7 des:7 g:m7.5- c:7 f1:7

	%		c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 144 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	#(set-accidental-style 'modern-cautionary)
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\partial 2 c8 d f aes 
\repeat volta 2 {
bes4. aes8 r4. ces8~ 
ces aes bes aes r f4 aes8
\tuplet 3/2 {bes bes aes bes bes aes} bes bes aes f
r4. aes8 r f <es aes>4
<d f>4. <des f>8 r4 <c f>~
<c f> <b f'> r8 f' aes bes~
bes4. aes8 r f es f~
}
\alternative {{f4 r c8 d f aes}{f2.\repeatTie r4}}
d es b c
d4. b8 c d es fes~
fes2. g8 f~ f2. bes,4
f'4. bes,8~ bes2 bes f'8 es des c~
c2 c8 bes aes g~ g2 c8 d f aes
bes4. aes8 r4. ces8~ 
ces aes bes aes r f4 aes8
\tuplet 3/2 {bes bes aes bes bes aes} bes bes aes f
r4. aes8 r f <es aes>4
<d f>4. <des f>8 r4 <c f>~
<c f> <b f'> r8 f' aes bes~
bes4. aes8 r f es f~ f2 r
\break
\repeat volta 2 {s1 s s s s s s s} \break
s s s s s s s s \break
s s s s s s s s \bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


theme=\staffViolon

\include "utils/books.ly"