% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 26)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
  title = "Isotope" 
  composer = "Joe Henderson"
  tagline = ""

}


accords = \chords {
  \partial 8 s8
  \repeat volta 2 {
    c1:7 es2:7 d:7 g:7 c:7 s1
    f:7 bes:7 c2.:7 s8 a1:sus9 aes :sus9 s8
    d2:m7 g:7 c:7 a:7 ges:7 es:7}
  % Solos
  \repeat volta 2 {\repeat percent 4 {c1:7} f:7 bes:7 c:7 a:7 \break aes:7 g:7 c2:7 a:7 ges:7 es:7}
  c:7 a:7 ges:7 es4.:7 c8:7
}

theme = \new Staff {
  \time 4/4
  \tempo 4 = 120
  \set Staff.midiInstrument = "trumpet"
  \key c \major
  \clef treble
  \accidentalStyle modern-cautionary
  \relative c' {
    % Type notes here
    \compressEmptyMeasures
    \partial 8 c8
    \repeat volta 2 {
      <fis c> <g b,> r c r c, r4
      r \tuplet 3/2 {<a' fis>8 <aes f> <g e>} <fis es> <d' fis,>~ <d fis,>4
      <b g>8 f <b f> <c e,>8~ <c e,>2~ <c e>4 r r8 bes aes f 
      gis a f c
      <<
        \voiceOne {bes' es, c' f, es' g, r4 d'8 aes bes d, c' e,}
        \new Voice {
          \override NoteHead.color = #red 
          \voiceTwo 
          es bes' f c' g es' r4 aes,8 d d, bes' e,[ c']}
      >>
      \oneVoice
      r4 cis8 a16 g e8 d~ d2. r4
      r8 <c' aes> \tuplet 3/2 {<aes f> <ges es> <des bes>}
      <c' aes> <aes f> <ges es> <des bes>
      c f g a <b d,>4. <c e,>8--
      \mark \markup {\musicglyph "scripts.coda" }
      r2 <cis a>8 <a g> <g es>4-.
      <bes ges>8 <ges e> <e c>4-. <g es>8 <es des> <des bes> <c aes> 
    }
    \break
    \repeat volta 2 {\repeat percent 4 {s1} \repeat unfold 8 {s1}}
    \break
    \mark \markup { \musicglyph "scripts.coda" }
    r2 <cis' a>8 <a g> <g es>4-.
    <bes ges>8 <ges e> <e c>4-. <g es>8 <es des> <des bes> <c aes>
    \bar "|."
  }
}

\include "utils/books.ly"