\version "2.22.0"
\header {
	title = "Willow Weep For Me"
	composer = "Ann Ronell"
%	instrument = 
%		"in C"
%		"in Bb"
%		"in Eb"
tagline = ""
}

#(set-global-staff-size 20)
#(set-default-paper-size "a4")
\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


%%%%%%%%%%%%%%%%%%%
% ThÃƒÂ¨me
%%%%%%%%%%%%%%%%%%%

staffViolon = \new Staff
{
	\clef treble
	\time 4/4
	\key g \major
\relative c'' {
	\repeat volta 2 {
d8. d,16 \tuplet 3/2 {e8 g e~} e4. r8
d'8. d,16 \tuplet 3/2 {e8 g e~} e4. r8
d'8. d,16 \tuplet 3/2 {e8 g e~} e8. d16 \tuplet 3/2 {e8 g b~}
b8. g16 \tuplet 3/2 {e8 g e~} e4. r8
\break
d' c bes a g4. r8
d'8. c16 \tuplet 3/2 {bes8 a g} d'8 d,4 d8~
d1~
	}
	\alternative {
{d2. r4}
{d2. r4 \bar"||"}
	}
\break
	\repeat unfold 2 {
g8. c16 \tuplet 3/2 {d8 c ees~} ees4. c8
bes8. g16 \tuplet 3/2 {bes8 g b~}b4 r8 g
c8. c16 d8. c16 bes8 c4 bes8
	}
	\alternative {
{aes8. bes16 aes8 g8~ g4 r}
{aes8. bes16 \tuplet 3/2 {c8 ees d~} d4 r16 d8.\bar"||"}
	}
\break
d8. d,16 \tuplet 3/2 {e8 g e~} e4. r8
d'8. d,16 \tuplet 3/2 {e8 g e~} e4. r8
d'8. d,16 \tuplet 3/2 {e8 g e~} e8. d16 \tuplet 3/2 {e8 g b~}
b8. g16 \tuplet 3/2 {e8 g e~} e4. r8
d' c bes a g4. r8
d'8. c16 \tuplet 3/2 {bes8 a g} d'8 d,4 d8~
d1~
d2. r4
\break

\repeat volta 2 {s1 s s s \break s s s }
\alternative {{s}{s}}\break
\break
s s s s  \break
s s s s
\break
s s s s s s s s
\bar "|."}
}

%%%%%%%%%%%%%%%%%%%%%%%
% Grille
%%%%%%%%%%%%%%%%%%%%%%%

accords = {
	\chords {
	\repeat volta 2 {
g2 d:9aug
g d:9aug
g e:min
b:min e:min
c1:9
s2 d:aug
g d:min7
	}
	\alternative {
{g2 d:7aug}
{g1}
	}
	\repeat unfold 2 {
f2:9 ges4:9 f:9
ees2:9 aes2:min/g
f4:9 e:9 ees:9 d:9
	}
	\alternative {
{des2:9 c:7}
{aes4:7 a:min7.5- d:7 d:7aug}
	}
g2 d:9aug
g d:9aug
g e:min
b:min e:min
c1:9
s2 d:aug
g4 d:min7 aes2:9.11+
g1
	\repeat volta 2 {
g2 d:9aug
g d:9aug
g e:min
b:min e:min
c1:9
s2 d:aug
g d:min7
	}
	\alternative {
{g2 d:7aug}
{g1}
	}
	\repeat unfold 2 {
f2:9 ges4:9 f:9
ees2:9 aes2:min/g
f4:9 e:9 ees:9 d:9
	}
	\alternative {
{des2:9 c:7}
{aes4:7 a:min7.5- d:7 d:7aug}
	}
g2 d:9aug
g d:9aug
g e:min
b:min e:min
c1:9
s2 d:aug
g4 d:min7 aes2:9.11+
g1
	}
}


theme = \staffViolon

\include "utils/books.ly"
