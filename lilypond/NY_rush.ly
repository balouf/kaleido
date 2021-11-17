% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "NY Rush" 
 	composer = "Yoko Kanno"
 	tagline = ""

}


accords = \chords {
        s1*16
        \repeat volta 2 {
        d1:m7 es:9 d:m7 es:9
        c:m7 bes:m7 d:m7 es:9
        d:m7 es:9 e:m7.11 f:7.9
        bes:m7.9 a:7 d:m7 s
        d:m9 f:7 bes:m9 s
        a b/a c/a es:5+/a
        d:m9 des:9.13 c:m9 b:9.13
        b:m9 a:7 d:m7 es:9
        d:m7 es:9 d:m7 es:9 d:m7}
        \alternative {{es:9}{es:9}}
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃƒÂ¨me
\repeat volta 2
{        d1:m7 es:9 d:m7 es:9
        c:m7 bes:m7 d:m7 es:9 \bar "||"
        \break 
        d:m7 es:9 e:m7.11 f:7.9 
        bes:m7.9 a:7 d:m7 s \bar "||"
        \break
        d:m9 f:7 bes:m9 s
        a b/a c/a es:5+/a
        \break
        d:m9 des:9.13 c:m9 b:9.13
        b:m9 a:7 \bar "||"
        \break 
        d:m7 es:9
        d:m7 es:9 d:m7 es:9 d:m7 es:9}
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 260 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-voice-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
<<
	{
	  r8 d e g f f g b a a b d c c d f
	  e d c bis a fis e d g ges e des fes es r4
	}
	%\\
	{
	 % \voiceOneStyle
	 r8 f g b a a b d c c d f e e f a
	 g f e dis c ais g f b bes g fes aes ges r4
	}
>>
R1*4 R1*7
r8 a, es' b des g a c
\repeat volta 2 {
a1 r8 f g a c bes f a~
a1 r8 f g a c bes f g~
g2~ g8 f4 es8 des2~ des8 bes4 des8
a1 r8 a es' b
<<
  {des g a c
  a1 r8 f g a c bes f a~
  a1 r8 f g a c[ bes]}
  %\\
  {%\voiceOneStyle 
  a, des es g
  e1 r8 des es f a g des e~
  e1 r8 des es f a[ g]}
>>
f g~
g2~ g8 f4 es8 des2~ des8 bes4 des8
a1 r8 d4.-> fis4-> a4->
<<
{es'2~ es8 e4 es8 d2 ges,
f4. c'8~ c2}
{g2~ g8 aes4 g8 fis2 d
des4. a'8~ a2}
>>
r4. f8 
<<
  {c'des c bes a2 d4. b8~ b2 e4. c8~ c2 e4. cis8~ cis2 f4. e8}
  {a, bes a g f2 f4. fis8~ fis2 fis4. g8~ g2 g4. g8~ g2 a4. a8}
>>
<<
  {r2 f8 a d f e2( es d-.) es,8 g c es d2( des
c-_) r8 bes4-> c8-> a4-> r r2
r1 r e'1~ e \acciaccatura {es8[ d]} des1~ des}\\
  {r2 a,8 d f a aes2~ aes~
aes-. g,8 c es g ges2~ ges~
ges-_ r8 f4-> f8-> g4.->  g8 f c a f\mark \markup {\musicglyph "scripts.coda" }
e1~ e~ e~ e~ 
e1~ e}
>>
r1
}
\alternative{ {r8 a es' b des g a c} {r1} }
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c \break
\pageBreak
\repeat volta 2 { \repeat unfold 38 {s1} }
\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "
  \musicglyph "scripts.coda"}
 } 
 \break
 e,4 r
<<
  {
   f8 a d f e2( es d-.) es,8 g c es d2( des
c-_) r8 bes4-> c8-> a4.-> 
%r1 r e'1~ e \acciaccatura {es8[ d]} des1~ des
  }\\
  {a,8 d f a aes2~ aes~
aes-. g,8 c es g ges2~ ges~
ges-_ r8 f4-> f8-> g4.->
%e1~ e~ e~ e~ 
%e1~ e
  }
>>
g'8 f c a f e
<<
	{
	  r8 d e g f f g b a a b d c c d f
	  e d c bis a fis e d g ges e des fes es r4
	}
	%\\
	{
	 % \voiceOneStyle
	 r8 f g b a a b d c c d f e e f a
	 g f e dis c ais g f b bes g fes aes ges r4
	}
>>
\bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"