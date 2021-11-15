% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.14.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "A Night In Tunisia" 
 	composer = "Dizzy Gillespie"
 	tagline = ""

}

accords = \chords {
	\partial 8 s8
	R1*8
	\partial 8 s8
	\repeat volta 2 {
        \repeat unfold 2 {es1:7 d:m6}
        es:7 d:m e2:m7.5- a:7.9+
        }
        \alternative {{d1:m}{d1:m}}
        a:m7.5- d:7.9+ g:m g:m
        g:m7.5- c:7.9+ f:maj7 e2:m7.5- a:7.9+ 
        \repeat unfold 2 {es1:7 d:m6}
        es:7 d:m e2:m7.5- a:7.9+ d1:m
        e1:m s es:7.4+^3 s
        d:m s g:7.4+^3 s
        c:7.4+^3 g:m/c ges:7.9+ s2.
        f4 R1*4
        % Solos
	\repeat volta 2 {
        \repeat unfold 2 {es1:7 d:m6}
        es:7 d:m e2:m7.5- a:7.9+ d1:m
        }
        \break
        a:m7.5- d:7.9+ g:m g:m
        g:m7.5- c:7.9+ f:maj7 e2:m7.5- a:7.9+
        \break
        \repeat unfold 2 {es1:7 d:m6}
        es:7 d:m e2:m7.5- a:7.9+ d1:m
}

theme = \new Staff {
	\time 4/4
	\tempo 4 = 138
	\set Staff.midiInstrument = "violin"
	\key f \major
	\clef treble
	#(set-accidental-style 'modern-cautionary)
	\relative c' { 	
 % Type notes here 
\compressFullBarRests
\clef bass
% Ligne de basse
\partial 8 \parenthesize bes8^\markup{Latin}
\repeat percent 4 {es, bes' des es~ es des4 a8 d, f a b~ b a4 bes8}
% A A
\break \clef treble \partial 8 a8\(
\repeat volta 2 {
\times 2/3 {bes des f} c'2\)
bes8\( f gis a~ a4\) r4 r8
a,8\( \times 2/3 {bes des f} c' c~ c4\)
bes8\( f a2.\) r8
a,\( \times 2/3 {bes des f} c'2\)
bes8\( f gis a~ a4\) r2
a8([ bes] \times 2/3 {a16 bes a} g8 es4)
cis8( d~
}
\alternative {
	{d4) r r r8  a8*1/2(\noBeam \hideNotes a16) \unHideNotes}
	{\hideNotes d8~( \unHideNotes d4*1/2) r4 r r8 a'8(}
}
% B
c4.)^\markup{Swing} a8( a4.) g8( fis4)
es'8( cis d c4) a8
bes g4 fis8~ fis4 a8( fis g a e4) r4 r8
\acciaccatura a bes~ bes \acciaccatura a bes4 r8 r4
\times 2/3 {g16( aes g} f8 e4)
\times 2/3 {des'16( es des} b8 c bes4)
gis8( a4.) f8( \times 2/3 {g16 aes g} f8
\times 2/3 {g16[ aes g} f8] e2.) r8
% A
a,8\(^\markup{Latin}
\times 2/3 {bes des f} c'2\)
bes8\( f gis a~ a4\) r4 r8
a,8\( \times 2/3 {bes des f} c' c~ c4\)
bes8\( f a2.\) r8
a,\( \times 2/3 {bes des f} c'2\)
bes8\( f gis a~ a4\) r2
a8([ bes] \times 2/3 {a16 bes a} g8 es4)
cis8( d~ d4) r
% Interlude
r8 a'4-> a8~->(^\markup{Interlude} a4 g8 e) a4( g8 e) a( g e a) r4 r8
a8~->( a4 g8 es) a4( g8 es) a( g es a) r4 r8
a8~->( a4 f8 d) a'4( f8 d) a'( f d a') r4 r8
a8~->( a4 f8 des) a'4( f8 des) a'( f des a') r4 r8
a8~->( a4 fis8 d) a'4( fis8 d) a'( f d a') r4 r8
a8~->( a4 e8 des) a'4( e8 des) a'( e des a') r4 a8( c)
R1*4 ^\markup{Solo break}
\repeat volta 2 {
\repeat unfold 8 {R1}}
\repeat unfold 8 {R1} \bar "||"
\repeat unfold 8 {R1}
\bar "|."}
}

suffix=""

\include "utils/books.ly"