% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

\include "utils/AccordsJazzDefs.ly"

#(set-global-staff-size 25)
#(set-default-paper-size "a4")

\paper { indent = 0\cm} 

\header {
	title = "Lonely Woman" 
 	composer = "Horace Silver"
 	tagline = ""

}


accords = \chords {
	\partial 8 s8
	\repeat volta 2 {
	es2:m7 des:m7 c:m7.5- ces:maj7
	f:m7.5- bes:7.5+.9+ es1:m9
	f2:m7.5- bes:7.5+.9- a:7.5- g:7.5+
	f:m7.5- bes:7.9+}
	\alternative {{es:m9 bes:7.5+.9+}{es:m9 bes:7.5+.9-}}
	es2.:m7 d4:m7 des2:m7 ges:7 ces:maj9 bes:7.5+.9+
	es2:m7 des:m7 c:m7.5- ces:maj7
	f:m7.5- bes:7.5+.9+ es1:m9
	f2:m7.5- bes:7.5+.9- a:7.5- g:7.5+
	f:m7.5- bes:7.9+
	es:m9 bes:7.5+.9+
	f:m7.5- bes:7.9+ es:m9 bes:7.9+.5+ es:m9 bes:13.9-
	es2:m7 des:m7 c:m7.5- ces:maj7
	f:m7.5- bes:7.5+.9+ es1:m9
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃ¨me
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 60 
	\set Staff.midiInstrument = "trumpet"
	\key ges \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
\partial 8 bes8
\repeat volta 2 {
bes'2 bes bes bes
r4 \tuplet 3/2 {bes16 ces bes} a bes des4. bes16 aes
%\break
bes2 r8 <f des>16 <e c> \tuplet 3/2 {<es ces>8-. <d bes>-. des16 c} \break 
ces4 r16 <aes' fes> <aes fes> <ges d> <aes fes>8 <bes ges>4. <ges es>8 <es ces>~ <es ces>2.
r4 r16 ges \tuplet 3/2 {f32 ges f} es16 des4. bes8 \break 
}
\alternative {
{f'4. des16 d des'8 b16 des bes8 bes,}
{f'4 <des' bes>16 <bes ges> <bes ges> <ges d> <ges d>8 <d ces>4.}}
r4 <f' des>16 <des bes> <des bes> <bes ges> <bes ges>8 <ges es>4. \break 
r4 <es' ces>16 <ces aes> <aes fes> <fes des> <es c>4~ <es c>16 des c des
ges4 des8 d des' b16 des bes8 aes 
bes2 bes bes bes \break 
r4 \tuplet 3/2 {bes16 ces bes} a bes des4. bes16 aes
bes2 r8 <f des>16 <e c> \tuplet 3/2 {<es ces>8-. <d bes>-. des16 c}
ces4 r16 <aes' fes> <aes fes> <ges d> <aes fes>8 <bes ges>4. \break <ges es>8 <es ces>~ <es ces>2.
\mark \markup {\musicglyph "scripts.coda" }
r4 r16 ges \tuplet 3/2 {f32 ges f} es16 des4. bes8
f'1_"Solos, D.C. al Coda"
\bar "||"
\break
\mark \markup {\musicglyph "scripts.coda" }
r4 r16 ges \tuplet 3/2 {f32 ges f} es16 des4. bes8
f'2^"Freely" s s bes4-\fermata r8 bes,-\fermata \break 
bes'2^"a tempo" bes bes bes
r4 \tuplet 3/2 {bes16 ces bes} a bes des4. bes16 aes bes1-\fermata
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


theme = \staffViolon

\include "utils/books.ly"
