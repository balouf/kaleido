% Created on Tue Mar 16 11:51:51 CET 2010
\version "2.22.0"

#(set-global-staff-size 27)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "The Maze" 
 	composer = "Herbie Hancock"
 	tagline = ""

}


accords = \chords {
	s1 s s s
	\repeat volta 2 {
	e1:min7 a:7 e:min7 a:7 \break a:min7 g:min7 fis:min7.5-}
	\alternative {{b:7.9-}{b:7.9-}}
	e1:min7 a:7 e:min7 a:7 \break a:min7 g:min7 fis:min7.5- b:7.9-
}


staffViolon = \new Staff {
	\time 4/4
	\override Score.MetronomeMark.stencil = ##f
	\tempo 4 = 120 
%	\set Staff.instrumentName = "Bb"
	\set Staff.midiInstrument = "tenor sax"
%	\transposition ees,,
	\key e \minor
	\relative c' {
		\accidentalStyle modern-cautionary
 % Type notes here 
\clef bass
{ <e,, b' g'> <e cis' a'> <e b' g'> <e cis' a'> } \break 
\clef treble
\repeat volta 2 {
<<
		{
r8 a' d e~ e2~ e4. e8 a e r4
r8 a, d e~ e2~ e4. e8 b' g r4
r8 a, d e~ e2~ e4. e8 a f r4
\tuplet 3/2 { e8 d c} a a~ a2 
		}
	\new StaffGroup		{\key e \minor
r2 r8 d e a~ a2 r4 e8 a
r2 r8 d, e a~ a2 r4 g8 b
r2 r8 d, e a~ a2 r4 f8 a
\tuplet 3/2 { e8 d c} a a~ a2 
		}
	>>
}
	\alternative {{
%	\set Score.repeatCommands = #'((volta "1... (x-1)"))
	r8 a c a d a ees'4} {
%	\set Score.repeatCommands = #'((volta "x"))
	r8 a, c a d a e'4}}
	\bar "|."
	\mark \markup { \column % vspace avant solos si besoin
  { " " 
    " " 
    " "
  " "
  " "}
 } 
	\break
	\chordmode {e1:min7 a:7 e:min7 a:7 \break a:min7 g:min7 fis:min7.5- b:7.9-}
	\bar "|."
	}
}

theme = \staffViolon

\include "utils/books.ly"
