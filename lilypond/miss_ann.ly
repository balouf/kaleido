\version "2.22.0"  % necessary for upgrading to future LilyPond versions.

\header{
  title = "Miss Ann"
  %subtitle = "For more information on using LilyPond, please see
%http://lilypond.org/web/help/"
composer = "Eric Dolphy"
tagline = ""
}

#(set-default-paper-size "a4")
#(set-global-staff-size 25)

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

accords = \chords {\transpose c bes {
	\repeat volta 2 {\bar".|:"
g1:dim c:7 f:dim bes:7 bes:7 bes:7
fis:min7 b:7  f:min7 a:7  e:min7 f:min7 fis:min7 b:7
	}
	\repeat volta 2 {
g1:dim c:7 f:dim bes:7 bes:7 bes:7 \bar"||"
fis:min7 b:7 \bar"||" \break f:min7 a:7  e:min7 f:min7 fis:min7 b:7
	}
	}
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 180 
	\set Staff.midiInstrument = "trumpet"
	\key bes \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\transpose c' bes {
\relative c'' { 
\accidentalStyle modern-cautionary
\repeat volta 2 {
% Mesure 1
% \override NoteHead.color = #red
bes8 f des bes
b aes' ges des~
% Mesure 2
des a'~ a fis
aes ges des bes
% Mesure 3
b4 des8 ees e aes ges e
% Mesure 4
fis fis'~ fis4 r aes,8 a
% mesure 5
aes ges des' ees des ces ges aes
% Mesure 6
des ces ges des ees des ges b,
% Mesure 7
ges' a, b4 r8 e' d ees
% Mesure 8
c g f ees~ ees4~ ees8 a,
% Mesure 9
aes ges b des c b ges aes
% Mesure 10
a b des ees e fis g e
% Mesure 11
d g, b cis d e a fis
% Mesure 12 13 14
des aes b4. c8 d[ cis] b4 r r2 r1 \break
}
	}
}

\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
 s s s s s s s s s s s s s s
	}
}

\include "utils/books.ly"