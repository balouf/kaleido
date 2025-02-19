% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Whiplash" 
	subsubtitle = "Intro, A, B, C, D, B, Intro, solos sur E*+D, B -> Coda"
 	composer = "Hank Levy"
 	tagline = ""

}


accords = \chords {
  c1:m9 s2. s1 s2. s1 s2.
  s1 s2. s1 s2. s1 s2.
  s1 s2. g1:9- s2. c1:m9.7+ s4. bes:9.7+
  c1:m9.7+ es4.:m9.11+ des:m9.11+
  c1:m9.7+ s4. bes:9.7+
  c1:m9.7+ es4.:m9.11+ des:m9.11+
  c2.:m9.7+ c:m13 s1 c:m11 s2. c:m13 s4
  s2. c1:m11
  c1:m9 c4.:m9.7+ bes:9.7+
  c1:m9 es4.:13 des:13
  c1:m9 c4.:m9.7+ bes:9.7+
  c1:m9 es4.:13 des:13
  c1:m9 c4.:m9.7+ bes:9.7+
  c1:m9 es4.:13 des:13
  c1:m9 c4.:m9.7+ bes:9.7+
  a2 c4 g2.:9- c4
  r1.. s s s s s s s
  s s s s
  \repeat volta 2 {
  c1:m9.7+ s4. bes:9.7+
  c1:m9.7+ es4.:m9.11+ des:m9.11+
  c1:m9.7+ s4. bes:9.7+
  c1:m9.7+ es4.:m9.11+ des:m9.11+
  }
  c1 s4 g2:m9 c1:m9 s4 bes2:sus2
  c2.:7 bes2:9 c g1:m s4 bes4:maj7 bes/g
  c2 g2.:m c4 g:m c4. g2:m s8 c4 g2:m c2.:m es4.:m11
  d:11sus2 des4:m11 c2 s4. d:m7.5-.9- ges2:9
  c1:m9 bes2.:6.9 s4 c
}

staffViolon = \new Staff {
	\time 7/4
	\tempo 4 = 215 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<c' g'>4-> <c g'>8-. <c g'>-. <c g'>4->
<c g'>8-. <d bes'>-^ r <c g'>8-. <c g'>(
<bes f'>) <c g'>4-^
c4-^ bes8 aes g4-^_"Bass or piano (octava)"
c,8 ges'4-- f-- c8( es4->) 
<< { \voiceOne 
   <c' g'>4-> <c g'>8-. <c g'>-. <c g'>4->
<c g'>8-. <d f>-^ r <d f>-. <c g'>2->
}
  \new Voice { \voiceTwo c,1 }
>> \oneVoice
c4-^ c8 d es4-^ f8 ges r f r es c4
<c' g'>4-> <c g'>8-. <c g'>-. <c g'>4->
<c g'>8-. <d bes'>-^ r <c g'>8-. <c g'>(
<bes f'>) <c g'>4-^
c4-^ bes8 aes g4-^
c,8 ges'4-- f-- c8( es4->)
<< { \voiceOne 
   <c' g'>4-> <c g'>8-. <c g'>-. <c g'>4->
<c g'>8-. <d f>-^ r <d f>-. <c g'>4-> r
}
  \new Voice { \voiceTwo c,1 r2 c'8 bes}
>> \oneVoice
g2 <f f'>8( <g g'>) <g g'>8( <f f'>)
<g g'>-. <bes bes'>4 <g g'>8-. <bes bes'>4
\break
\mark \default
<g c'>1~  <g c'>2.~
<g c'>1 r4. r r1 r4. r r1 r4. r
<< { \voiceOne 
c1~ c4. bes4 g8 bes c~ c2.~ c
r2 c~ c4. bes4 g8
bes c~ c2.~ c
}
  \new Voice { \voiceTwo
r2. r8 e, d2. r2. r8 e f2.
r2. r8 e d2. r2. r8 e f2.
}
>> \oneVoice
\break
\mark \default
c'4-> \bendAfter # -4 c2 g8 r bes a g~ g4.
r2 c8 es r c es d c bes4 g8
c4-> \bendAfter # -4 c2 g8 c bes( a g) g4.
r2 c8 es r c ges' f es f4 es8
c4-> \bendAfter # -4 c2 g8 c bes a g2
r2 c8 es r c es d c bes4 g8
c4-> \bendAfter # -4 c2 g8 c bes( a g) g4.
c8 es r c es r c es r c es r c\mark \markup { \musicglyph "scripts.coda" }  r
\break
\mark \default
g8-. r g2 g8( c) bes( a g2)
r4 r8 g-> r a-> r c bes->( a g) a4->( f8)
g8-. r g2 g8( c) bes->( a g) g4.->
r4 r8 g r a r g bes( a g) a4( bes8)
c8-. r c2 c8( f) es( d c2)
r4 r8 c r d r f es->( d c) c4->( bes8)
c8-. r c2 c8( f) es->( d c) c4.->
r2 es8->( d c) bes-> r g r bes r bes
\break \mark \default
<< { \voiceOne 
     g'1~ g4. f8->( g4-.)
g1~ g4. bes8->( g4-.)
g1~ g4. f8->( g4-.)
g1~ g4. bes8->( g4-.)
}
  \new Voice { \voiceTwo 
        g,1. g4 f1. f4 e1. e4 d1..}
>> \oneVoice
\break \mark \default
\repeat volta 2 {
r1^"Solos" r4. r
\repeat unfold 3 {r1 r4. r}
}
\break
\mark \markup { \musicglyph "scripts.coda" } 
c8\mp es d c f[ es] c g'~ g c,8 f-> ges f-> es
f es c c~ c4  g' bes c8-> bes g-> f
g4-> c,8 ges'->~ ges c,8 f-> ges f-> es c4-> r
d8 es f g aes g f
<< { \voiceOne 
g2..
}
  \new Voice { \voiceTwo 
d8\< es f g a bes g\f}
>> \oneVoice
c4-- c-> bes8[-> a] g a-^~ a f8 g2
g8[-> c] g bes->~ bes g8 a-> g g-> f g4 g8 bes
\ottava #1 c4 c8 es~ es c8 bes'4 c,8 a'~ a c,8 aes' ges
g ges f c es c f ges~ ges g8 g bes bes g
c4-^ c2-- g8-- c-. bes->( a) g2->
r4 c-^ r r1
\bar "|."
	}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
%\mark \markup { \column % vspace avant solos si besoin
%  { " " 
%    " " 
%    " "
%  " "
%  " "}
% } 
% c c c c c c c c

}


theme = \staffViolon

\include "utils/books.ly"
