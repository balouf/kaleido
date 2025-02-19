\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Spybot"
	composer = "Vaurien"
	tagline = ""
%	instrument = 
%		"in C"
%		"in Bb"
%		"in Eb"
}


%%%%%%%%%%%%%%%%%%%
% ThÃ¨me
%%%%%%%%%%%%%%%%%%%

staffViolon = \new Staff {
  \time 4/4
  \tempo 4 = 192
  \set Staff.midiInstrument = "trumpet"
  \key c \minor
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' { 	
\partial 4 c8^\markup{Binaire} d
	\repeat volta 2 {
aes' g f g r f, r f
r f g-> f f4 c'8 d
aes' g f g r c, r c
r c d-> c c4 c8 d
	}\break
<<
{ g f d c~ c4. bes8
fis' d ees c~ c4. aes8
ees' c bes aes~ aes2
ees'8 c b aes~ aes2 }\\
{ g1
aes
aes
gis }
>>\bar"||"
\break

aes'8 g f g r f, r f
r f g-> f f4 c'8 d
aes' g f g r c, r c
r c d-> c c4 r \bar"|."\break

g'8^\markup{Swing} f d f~ f4 c8 d
fis d ees c~ c2
ees8 c bes aes~ aes4 bes8 c
ees c b aes~ aes2
bes8 c ees c ees c4.
bes8 c d c d a4.
bes8 c ees c ees g4.
fis8 d ees c~ c2\bar"|."
s1 s s s s s s s
\bar "||"
s s s s \bar "||" s s s s \bar "||"
s s s s s s s s \bar "|."
  }
}


%%%%%%%%%%%%%%%%%%%%%%%
% Grille
%%%%%%%%%%%%%%%%%%%%%%%

accords = {
	\chords {
% Grille thÃ¨me
\partial 4 s4
\repeat volta 2 {f1:m s c:m s}
ees d:7 aes aes:m
f:m s c:m s2 r
ees1 d:7 aes aes:m
c:m d2:m a:m c1:m c:m7.5-\break
% Grille chorus
f1:m s c:m s
f1:m s c:m s\bar"||"\break
ees d:7 aes aes:m\bar"||"
f:m s c:m s\bar"||"\break
ees d:7 aes aes:m
c:m d2:m a:m c1:m c:m7.5-\bar"|."
	}
}



%%%%%%%%%%%%%%%%%%%%%%%%
% La Partition
%%%%%%%%%%%%%%%%%%%%%%%%


theme = \staffViolon

\include "utils/books.ly"
