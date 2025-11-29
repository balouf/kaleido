\version "2.22.0"
\include "utils/AccordsJazzDefs.ly"


#(set-global-staff-size 24)
#(set-default-paper-size "a4")


\paper { indent = 0\cm} 

\header {
	title = "Think Of One"
	composer = "Thelonious Monk"
	tagline = "" 
}


%%%%%%%%%%%%%%%%%%%
% ThÃ¨me
%%%%%%%%%%%%%%%%%%%

staffViolon = \new Staff
{
	\clef treble
	\time 4/4
	\tempo 4 = 144
	\key f \major

\relative c' {
	\repeat unfold 2 {
		f4 c8 f ~ f2 
		f4 f f r4
		f8 f f f f4 c8 ees ~
		ees2 r \break
		f4 c8 f ~ f2 
		f4 f f r4
		\tuplet 3/2 {f8 f f} b4 r \tuplet 3/2 {f8 f f}
		b,4 r r2
}\break
		f'8 f f f f4 c8 ees~
		ees2 r
		f8 f f f f4 f8 <a b>~
		<a b>2 r \break
		f8 bes,4 b c des8~
		des des4. r2
		f8 f f f f4 c8 ges'~
		ges2 r
\break
		f4 c8 f ~ f2 
		f4 f f r4
		f8 f f f f4 c8 ees ~
		ees2 r \break
		f4 c8 f ~ f2 
		f4 f f r4
		\tuplet 3/2 {f8 f f} b4^"Fin" r \tuplet 3/2 {f8 f f}
		b,4 r r2 \bar"||"
}
}


%%%%%%%%%%%%%%%%%%%%%%%
% Grille
%%%%%%%%%%%%%%%%%%%%%%%

accords = {
	\chords {
			\repeat unfold 2 {
		f2:7 b:7.5-
		d4:7.9+ ees2.:7.9
		aes2:7 des4.:7 c8:7.9+
		s1
		f2:7 b:7.5-
		d4:7.9+ ees2.:7.9
		f1:7.5-
		s1
		}
		f1:7
		s
		bes:7
		g:7.9
		s2.~s8 des:7
		s1
		des8 c b bes a2
		c1:7.5-.9-
		f2:7 b:7.5-
		d4:7.9+ ees2.:7.9
		aes2:7 des4.:7 c8:7.9+
		s1
		f2:7 b:7.5-
		d4:7.9+ ees2.:7.9
		f1:7.5-
		s1
	}
}

theme = \staffViolon

\include "utils/books.ly"
