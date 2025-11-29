% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 28)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm}

\header {
	title = "Les jardins suspendus"
 	composer = "Kaleido (BL)"
 	tagline = ""

}


accords = \chords {
  \repeat volta 2 {
  d1:sus4.7 d:sus4.7.9/bes d:sus4.7 d:sus4.7.9/bes
  g1:sus4.7 g:sus4.7.9/ees g:sus4.7 g:sus4.7.9/ees
  des1:7 bes:sus4.7 aes:maj g:9+.13-
  }
  c1:sus4.7 s s s s s a:8 s
}

staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 144
	\set Staff.midiInstrument = "trumpet"
	\key d \minor
	\clef treble
	\accidentalStyle "modern-cautionary"
	\relative c' {
 % Type notes here
\compressEmptyMeasures
\set Timing.beamExceptions = #'()
<<
  \voiceOne {
    \mark "A"
    \repeat volta 2 {
      a''2~ a8 bes \times 2/3 {a   g e}  d4 c a8 c4.         s1 s \break
      a'2~  a8 c   \times 2/3 {aes g f}  d4 c a8 c4.         s1 s \break
      g'2~  g8 bes \times 2/3 {g   f d?}  f8 es4.~ 8 g8 f bes,   c ees4 g8~ 4. f8  b,8 ees2..^"fine"
    } \break
    \mark "B"
    s1 s s s s s s s^"to A, al fine" \bar"||" \break
  }
  \new Voice {
    \override NoteHead.color = #red
    \voiceTwo
    \repeat volta 2 {
      s1 s a,4. bes4 a8 g e   d c4 a c4. \break
      s1 s a'4. c4 aes8 g f   d c4 a c4. \break
      s1 aes'2 bes8 aes f ees   g ees4 c8~ 4. ees8   aes g2..
    } \break

    s1 s s s s s s s \bar"||" \break
  }
>>
\bar "|."
	}
}


theme = \staffViolon

\include "utils/books.ly"
