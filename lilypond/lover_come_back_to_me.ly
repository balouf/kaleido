% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Lover Come Back To Me" 
 	composer = "Romberg - Hammerstein"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
    \repeat percent 2 {aes1} c:7 s f:m7 s bes:7 bes2:7 b:dim
    aes1 s bes:7 es:7 aes2 aes:7 des des:m
  }
  \alternative {{aes1 es:7}{aes c:7}}
  f:m s bes:m f:m c:7 s g:9- c:7
  f:m s bes:m f:m bes:7 s es:7 s
  aes1 s c:7 s f:m7 s a:dim s
  bes:m7 s es:7 s aes2 aes:7 des des:m aes1 s
  \repeat volta 2 {
    aes1 s c:7 s f:m7 s bes:7 bes2:7 b:dim
    aes1 s bes:7 es:7 aes2 aes:7 des des:m
  }
  \alternative {{aes1 es:7}{aes c:7}}
  f:m s bes:m f:m c:7 s g:9 c:7
  f:m s bes:m f:m bes:7 s es:7 s
  aes1 s c:7 s f:m7 s a:dim s
  bes:m7 s es:7 s aes2 aes:7 des des:m aes1 s  
%	c1:m7.5+.9+ % un accord
%	es:m7 % un deuxiÃ¨me
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
\repeat volta 2 {
r4 aes' aes bes c1
r4 g g aes bes1
r4 aes aes bes c1
r4 f, f g aes1
r4 es es f aes bes c es c1 bes
es,4 f aes2 aes aes
}
\alternative{{aes1( es'2) r }{aes,1 g}}
\bar "||"
f4 g aes bes c f e f des f e f c1 c g aes g
f4 g aes bes c f e f des f e f c1 c f,4 g aes c es1 bes
\bar "||"
r4 aes aes bes c1
r4 g g aes bes1
r4 aes aes bes c1
r4 c c des es1
r4 des des es f aes f des c es c aes bes2 c
es,4 f aes2 aes aes aes1~ aes2 r \bar "||"
\break
\repeat volta 2 {
  r1 r r r r r r r2 r r1 r r r r2 r r r
}
\alternative{{r1 r}{r r}}
\bar "||"
r r r r r r r r r r r r r r r r
\bar "||"
r r r r r r r r r r r r r2 r r r r1 r \bar "|."

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

staffViolon = \new Staff {
	\time 2/2
	\tempo 2 = 92 
	\set Staff.midiInstrument = "trumpet"
	\key aes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"