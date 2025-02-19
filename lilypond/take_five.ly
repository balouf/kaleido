% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 21)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 

\header {
	title = "Take Five" 
 	composer = "Paul Desmond"
 	tagline = ""

}


accords = \chords {
	es1:m7 s4
	es1:m7 s4
	es1:m7 s4
	es2.:m7 bes2:m7
	es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7
	es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7
	ces2.:maj7 aes2:m6 bes2.:m7 es2:m7 aes2.:m7 des2:7 ges1:maj7 s4
	ces2.:maj7 aes2:m6 bes2.:m7 es2:m7 aes2.:m7 des2:7 f2.:m7 bes2:7
	es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7
	es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7 es2.:m7 bes2:m7
	\repeat volta 16 {es2.:m7 bes2:m7}
	%s4c1:m7.5+.9+ % un accord
	%es:m7 % un deuxiÃƒÂ¨me
}

staffViolon = \new Staff {
	\time 5/4
	\tempo 4 = 188 
	\set Staff.midiInstrument = "trumpet"
	\key ges \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c' { 	
 % Type notes here 
\compressEmptyMeasures
%\set Timing.beamExceptions = #'()
r2. r2 r2. r2 r2. r2 r2.
bes8( es ges aes a bes a aes ges4)
bes,( \grace {ces16[ c]} des4-.)
es2. f16( ges f es des4)
es2. des16( es des bes aes4)
bes2.
bes8( es ges aes a bes a aes ges4)
bes,( \grace {ces16[ c]} des4-.)
es2. des16( es des bes aes4)
bes2. f'16( ges f es des4)
es2.~ es4 r
%\key b \major
es'8( ges) r es( ces4-.) aes8( bes ces c)
des( f) r des( bes4-.) ges8( aes a bes
ces es) r ces( aes4-.) f8( ges aes a)
bes( a bes ces des4-.) des8( c des d)
es8( ges) r es( ces4-.) aes8( bes ces c)
des( f) r des( bes4-.) ges8( aes a bes
ces es) r ces( aes4-.) f8( aes des ces
bes2.) bes,8( es ges aes
%\key ges \major
a bes a aes ges4)
bes,( \grace {ces16[ c]} des4-.)
es2. f16( ges f es des4)
es2. des16( es des bes aes4)
bes2.
bes8( es ges aes a bes a aes ges4)
bes,( \grace {ces16[ c]} des4-.)
es2. des16( es des bes aes4)
bes2. f'16( ges f es des4)
es2.~ es4 r
\break

\repeat volta 16 {s2.^"Solos" s2}
%c4^\markup{Essai} cis c cis
%\mark \markup {\musicglyph "scripts.coda" }
%c cis c c
	}
}

theme = \staffViolon

\include "utils/books.ly"
