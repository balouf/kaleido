% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Short Story" 
 	composer = "Kenny Dorham"
 	tagline = ""

}


accords = \chords {
\set chordChanges = ##t
                \mark\markup { \sans \box "A" }
	\repeat volta 2 {
		c1:m9  bes:m9
		c:m9 bes2:m9 c:m9
		f1:m9 es:m9
		f:m9 es2:m9 f:m9
	}
	\alternative {
		{
		f2..:m9 bes1:7 s8
		es2..:m9 aes1:7 s8
		aes2..:7 des1:maj7 s8
		d2..:m7.5- g1:7.5+.9+ s8
		}
		{
		f2..:m9 bes1:7 s8
		es2..:m9 aes1:7 s8
		aes2..:7 des1:maj7 s8
		d2..:m7.5- g1:7.5+.9+ s8
		}
	}
                \mark\markup { \sans \box "B" }
	\repeat volta 2 {
	\repeat percent 3 {c1:m}
	\parenthesize c:7
	\repeat percent 4 {f:m}
	f:m7 s2 bes:7
	es1:m7 s2 aes:7
	\repeat percent 2 {des1:maj7}
	d1:m7.5- g1:7.5+.9+
	}
                \mark\markup { \sans \box "C" }
c1:min7 
c1:min7 
c1:min7 
c1:min7 \break
f1:min7 
f1:min7 
f1:min7 
f1:min7
s1*8\pageBreak
g1:7.8%alt
                \mark\markup { \sans \box "D" }%
c1:min9.5-.7+
c1:min9.5-.7+
d1:7.5+.9+
d1:7.5+.9+
g:13.9-
des:13
g:min7.5-
c:7.8%alt
f:min7
bes2:sus4.7.9 %f2:min7/bes
bes2:7
ees1:maj7
a2:sus4.7.9 a:7.9-.5-
aes1:maj7
aes1:maj7
g1:7.5-
g1:7.5-
c1:min9.5-.7+
c1:min9.5-.7+
d1:7.5+.9+
d1:7.5+.9+
g1:7.5-/des
g1:7.5-/des
s1*2
c1:min11
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 206 
	\set Staff.midiInstrument = "trumpet"
	\key es \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
 \override Glissando.style = #'zigzag
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
\repeat volta 2 {
g8 c es g f des b es
r4 r8 des r b r aes
g2 g4. g8 r1
c8 f aes c bes ges e aes
r4 r8 ges r e r des
c4-. c-. c8 c r c r1
}
\alternative {{
c'~ c2 r4 r8 bes16 a
bes1~ bes2 \tuplet 3/2 {r4 aes g}
aes1~ aes2 g4-. fis8 g~ g1~ g2. r4\break
	}{
c1~ c4 r f-^ d8 bes~
bes1~ bes4 r es-^ c8 aes~
aes1~ aes4 r bes-. aes8 g~ 
\tuplet 3/2 {g4 e f} \tuplet 3/2 {bes g aes}
\mark \markup {\musicglyph "scripts.coda" }
bes1
}}
\break
\repeat volta 2 {
\repeat percent 4 {s}
\repeat percent 4 {s}
\break
s s s s 
\repeat percent 2 {s}
s s
}
\break
\repeat volta 2 {
<g d>2.. <g d>8
r2 r4 r8 <g d>
r <g d> r <f c> <g d>4-. <g d>-.
<g d>-. <g d>-. <g d>8 <g d> r <g c>~
<g c>2.. <g c>8
r2 r4 r8 <g d>
r <g d> r <f c> <g d>4-. <g d>-.
<g d>-. <g d>-. <g d>8 <g d> r <g es>
R1*8^"Drum"_"D.C. al Coda"
}
%%%% Set segno sign as rehearsal mark and adjust size if needed
%%%    \once \override Score.RehearsalMark.break-visibility = #begin-of-line-invisible
%%%    % \once \override Score.RehearsalMark.font-size = #3
%%%%    \mark \markup { \musicglyph "scripts.segno" }
%%%% \mark \markup {"D.C. al" \musicglyph "scripts.coda"}
%%%%\break
%%%% Here begins the trickery! 
%%%    % \cadenzaOn will suppress the bar count and \stopStaff removes the staff lines.
%%%    \cadenzaOn 
%%%      \stopStaff 
%%%        % Some examples of possible text-displays 
%%%        
%%%        % text line-aligned
%%%        % ==================
%%%        % Move text to the desired position
%%%         \once \override TextScript.extra-offset = #'( 2 . -3.5 )
%%%         | s1*0^\markup { D.S. al Coda } }
%%%        
%%%        % text center-aligned
%%%        % ====================
%%%        % Move text to the desired position
%%%        % \once \override TextScript.extra-offset = #'( 6 . -5.0 )
%%%        % | s1*0^\markup { \center-column { D.S. "al Coda" } }
%%%        
%%%        % text and symbols center-aligned
%%%        % ===============================
%%%        % Move text to the desired position and tweak spacing for optimum text alignment
%%%        %\once \override TextScript.extra-offset = #'( 8 . -5.5 )
%%%        %\once \override TextScript.word-space = #1.5
%%%        %\once \override TextScript.X-offset = #8
%%%        %\once \override TextScript.Y-offset = #1.5
%%%        %| s1*0^\markup { \center-column { "D.S. al Coda" \line { \musicglyph "scripts.coda" \musicglyph "scripts.tenuto" \musicglyph "scripts.coda"} } }
%%%        
%%%        % Increasing the unfold counter will expand the staff-free space
%%%        \repeat unfold 4 {
%%%          s4 s4 s4 s4
%%%          \bar ""
%%%        }
%%%        % Resume bar count and show staff lines again
%%%     \startStaff
%%%   \cadenzaOff
%%%   
%%%   % Should Coda be on new line?
%%%   % Coda NOT on new line: DON'T use \break
%%%   % Coda on new line: use \break
   \pageBreak  
%%%   
%%%   % Show up, you clef and key!
%   \once \override Staff.KeySignature.break-visibility = #end-of-line-invisible
%  \once \override Staff.Clef.break-visibility = #end-of-line-invisible
%\override Staff.Clef.break-visibility = #all-invisible
%\override Staff.KeySignature.break-visibility = #all-invisible
%\override Staff.TimeSignature.break-visibility = #all-invisible
%%%
%%%   % Set coda sign as rehearsal mark and adjust size and position
%%%   
%%%   % Put the coda sign ontop of the (treble-)clef dependend on coda's line-position
%%%      
%%%     % Coda NOT on new line, use this:
%%%     % \once \override Score.RehearsalMark.extra-offset = #'( -2 . 1.75 )
%%%     
%%%     % Coda on new line, use this:
%%%     \once \override Score.RehearsalMark.extra-offset = #'( -8.42 . 1.75 )
%%%   
%%%   \once \override Score.RehearsalMark.font-size = #3
   \mark \markup { \musicglyph "scripts.coda" }
\relative c'
   <<
	{bes'2 r4 c, \glissando \bar "||"
	d'1~ d2. r8 c
	bes1~ bes2. r8 a
	aes2.. g8 \glissando
	es'2.. fis,8
	g1 aes2-\repeatTie bes
	c2.. f,8~
	f2~ \tuplet 3/2 {f4 es d}
	bes'1 d,4.-\repeatTie c8 cis g'-^ r g->~ g1~
	g4 r r8 g-^ r des->~ des1~
	des2 r8 c4. \glissando
	d'1~ d2. r8 c bes1~ bes2. r8 ges
	f4. b,8~ b4. ges'8
	f4. b,8~ b4 b-.
	R1*2
	d1-\fermata
	}
\new Staff 
{
\override Staff.TimeSignature.stencil = ##f
\key es \major %\time 4/4 
	bes'2 r4 c,  \bar "||"
	r4 r8 b'~ b2~ b2. r4
	r4 r8 f~ f2~ f2. r4
	r4 r8 e~ e4~ \tuplet 3/2 {e8 des es}
	\tuplet 3/2 {f g a} bes4~ bes4. es,8
	des1 es2 des \glissando
	aes'2.. f8~
	f2~ \tuplet 3/2 {f4 es d}
	bes'1 d,4.-\repeatTie c8 cis g'-^ r g->~ g1~
	g4 r r8 bes-^ r g->~ g1~
	g2 r8 c,4.
	r4 r8 b'~ b2~ b2. r4
	r4 r8 f~ f2~ f2. r8 aes
	g4. des8~ des4. aes'8
	g4. des8~ des4 des-.
	R1*2
	f1-\fermata
}	
>>
\bar "|."
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
}


theme = \staffViolon

\include "utils/books.ly"
