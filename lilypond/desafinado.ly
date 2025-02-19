% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Desafinado" 
 	composer = "A.C. Jobim"
 	tagline = ""

}


accords = \chords {
\repeat unfold 2
{	f1:maj7 s
	g:7.4+ s
	g:m c:7
	a:m7.5- d:7.9-
	g:m e2:m7.5- a:7.4+
	d1:7 a2:m7.5- d:7.9-
	g1:7.9- s
	ges:maj7.4+ s
	f1:maj7 s
	g:7.4+ s
	g:m c:7
	a:m7.5- d:7.9-
	g:m bes:m6
	f:maj7 e:7.9+
	a:maj7 c:7
	b:m e:7
	a:maj7 bes:m7.5-
	b:m e:7
	a:maj7 fis:m
	b:m e:7
	c:maj7 cis:m7.5-
	d:m g:7
	g:m d:7.9-
	g:m c:7
	f1:maj7 s
	g:7.4+ s
	g:m c:7
	a:m7.5- d:7.9+
	g:m es:7
	f:maj7 aes:m7.5-
	g:7 s
	bes:m es:7
	g:7 c:7
	f:maj7 g:m/c
}
	%c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 186 
	\set Staff.midiInstrument = "trumpet"
	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
r8 c4 d8 \tuplet 3/2{e4 f e~}
e8 d4.~ \tuplet 3/2 {d4 cis d}
f4. cis8 cis2~ cis r
r8 d4 e8 \tuplet 3/2{f4 g f~}
f8 e4.~ \tuplet 3/2 {e4 dis e}
c'4. es,8 es2~ es r
\bar "||"
r8 d c' bes \tuplet 3/2 {a4 g bes~ }
bes a dis, e
\tuplet 3/2 {fis a fis~} \tuplet 3/2 { fis d es~}
es1
r8 aes4 g8 \tuplet 3/2 {f4 d aes'~}
\tuplet 3/2 {aes g f~} f8 d4.->
f4 des8 des~ des des r4 r1
\bar "||"
r8 c4 d8 e4. f8
\tuplet 3/2 {e4 d cis~} \tuplet 3/2 {cis d2}
f4 cis8 cis~ cis2~ cis r
r8 d4 e8 \tuplet 3/2{f4 g f~}
f8 e4.~ \tuplet 3/2 {e4 dis e}
c'4 es,8 es~ es2~ es r
\bar "||"
\tuplet 3/2 {r4 c' bes} \tuplet 3/2 {a g bes~}
\tuplet 3/2 { bes a2} g4 f
g f8 g~ g2~ g2. r8 f
\bar "||"
e4 fis \tuplet 3/2 { e fis e~}
e2~ \tuplet 3/2 { e4 d des}
e1~ e2. r8 cis
e4 fis \tuplet 3/2 { e fis e~}
\tuplet 3/2 { e d2} cis4 d
e bes8 bes~ bes bes e4~ e1
\tuplet 3/2 { r4 e fis} \tuplet 3/2 { gis a b~}
\tuplet 3/2 { b a2} cis,4 d
r e8 fis \tuplet 3/2 { e4 fis e~}
e2 r8 e4.
\bar "||"
g a8 \tuplet 3/2 { g4 a g~}
\tuplet 3/2 { g f2} e8 f e f
g4 \grace {a16([ g16]} d8) g~ g d g4~ g2 r8 g4.
bes a8 \tuplet 3/2 { bes4 a c~}
\tuplet 3/2 { c bes2} a4 bes
g1~ g2. r4
\bar "||"
r4 c, \tuplet 3/2 { d e f}
\tuplet 3/2 { e d cis~} \tuplet 3/2 { cis d f~}
f cis8 cis~ cis2~ cis2. r4
\tuplet 3/2 { r d e} \tuplet 3/2 { f g f~ }
\tuplet 3/2 { f e2} dis4 e
d'4. des8 \tuplet 3/2 { c4 b bes~ }
\tuplet 3/2 { bes d2~} d4 a
\bar "||"
\tuplet 3/2 { r c b} \tuplet 3/2 { bes a bes~}
bes8 a4.-> g4-. f-.
a2~ a8 e4.
g2. d8 e
\bar "||"
f f f f \tuplet 3/2 { f4 f2} r1
f8 f f f c'4 bes~
bes2~ bes8 d,4 e8
f f f f f4 e8 f~
f e4. dis4 e
g f8 f~ f2 r1 \bar "|."
\pageBreak
s1^"Solo" s s s s s s s
\bar "||" \break
s s s s s s s s
\bar "||"  \break
s s s s s s s s
\bar "||"  \break
s s s s
\bar "||"
s s s s  \break s s s s s s s s
\bar "||"  \break
s s s s s s s s
\bar "||"  \break
s s s s s s s s
\bar "||"  \break
s s s s
\bar "||"
s s   \break s s s s s s
\bar "|."
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}


\include "utils/books.ly"