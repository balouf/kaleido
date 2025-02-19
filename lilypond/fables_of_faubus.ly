% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"

#(set-global-staff-size 22)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm}

\header {
  title = "Fables of Faubus"
  composer = "Charlie Mingus"
  tagline = ""
}

\layout {
  \context {
    \Score
    \RemoveAllEmptyStaves
  }
}

globals = {
  \time 4/4
  \tempo 4 = 144
  \key aes \major
  \accidentalStyle modern-cautionary
  \compressEmptyMeasures
}

accords = \chords {
  \repeat volta 2 {
    bes1:m7 s des:7.11+ s
  }
  \repeat volta 2 {
    bes1:m7 s des:7.11+
  } \alternative {{s}{s}}
  ges:m7.5- c:7.5+
  f:maj7.3- des:7.11+
  c:7.5+.9+ bes:7.11+
  aes:7 g:7.5+
  \times 2/3 {s4 g:7 aes:7 a:7 bes:7 b:7}
  c1:7
  \times 2/3 {s4 des:7 d:7 es:7 e:7 f:7}
  c1:7.5+.9+ bes:7.11+ f:maj7.3- s s s
  bes:maj7.3- s ges:maj7.3- s
  bes:maj7.3- s ges:maj7.3- s
  d:maj7.9+.9- g:maj7.9- c:m7.5- f:7.9+
  \repeat unfold 4 {
    bes4.:7.11+ e2:7.11+ s8
  }
}

soufflants_intro_up = \relative c' {
  \override Glissando.style = #'zigzag
  \repeat volta 2 {
    f2\glissando aes
    r8 f aes bes \times 2/3 {b16 c b} bes aes f4
    g2\glissando bes
    r8 g bes c \times 2/3 {des16 d des} c bes g4
  }
}
soufflants_intro_down = \relative c' {
  \override Glissando.style = #'zigzag
  \transpose c a, \soufflants_intro_up
}

soufflants_a_up = \relative c' {
  \override Glissando.style = #'zigzag
  \break
  \mark \default
  \repeat volta 2 {
    f2\glissando aes
    r8 f aes bes \times 2/3 {b16 c b} bes aes f4
    g2\glissando bes
  }
  \alternative {
    { r8 g bes c \times 2/3 {des16 d des} c bes g4 }
    { r8 g bes c des8 }
  }
}
soufflants_a_down = \relative c' {
  \override Glissando.style = #'zigzag
  \transpose c a, \soufflants_a_up
}

soufflants_b = \relative c' {
  \partial 4. c8 \times 2/3 {des8 e g}
  \break
  \mark \default
  aes1~ 8 c, \times 2/3 {des f aes} des bes g e
  g4. g8 \times 2/3 {bes4 aes g8 f}
  g4. f8 aes g f c
  \set Score.repeatCommands = #'((volta "1"))
  es2.. c8 e2.. c8 f2.. c8 ges'1~ 1
  <<
    \voiceOne {
      g2\glissando bes
      r8 g bes c \times 2/3 {des16_"Repeat to A" d des} c bes g4
    }
    \new Voice {
      \override NoteHead.color = #red
      \voiceTwo \transpose c a, \relative c'' {
        g2\glissando bes
        r8 g bes c \times 2/3 {des16 d des} c bes g4
      }
    }
  >>
  \oneVoice
  \set Score.repeatCommands = #'((volta #f) (volta "2") end-repeat)
  es2.. c8 e2.. c8
  \set Score.repeatCommands = #'((volta #f))
  g'1~ 2 \times 2/3 {aes4 c e}
  g1~
  2.^"fine"
}

soufflants_c = \relative c'' {
  \partial 4 \times 2/3 { a8 bes b }
  \break
  \pageBreak
  \mark \default
  \bar "||"
  c4. b8 c2~ 4. bes8 c des c bes
  a4. g8 a2~ 2. \times 2/3 {a8 bes b}
  c4. b8 c2~ 4. bes8 es des c bes
  a4. g8 a2~ 4. g8 a bes a g
  f2.^"double time"_"voice 2: free form solo" es4 ges2. aes4 f2.. es8 aes1
  g8^"regular time" f \repeat unfold 7 {g8 f}
  \repeat unfold 4 {<g des'> <f c'>}
  <g des'> <f c'>
  <g des'>^"A, 2nd B, fine"
  <f c'> <g des'> <f c'> <g des'>4
  \tweak direction #DOWN
  \textEndMark "after solos: C, A, 2nd B, fine"
}

soufflants = \new Staff \with { \consists "Merge_rests_engraver" } {
  \globals
  \set Staff.midiInstrument = "trumpet"
  \clef treble

  <<
    \voiceOne \soufflants_intro_up
    \new Voice {
      \override NoteHead.color = #red
      \voiceTwo \soufflants_intro_down
    }
  >>


  <<
    \voiceOne \soufflants_a_up
    \new Voice {
      \override NoteHead.color = #red
      \voiceTwo \soufflants_a_down
    }
  >>
  \oneVoice

  \soufflants_b

  \soufflants_c

  \bar "|."
}

piano_a = \relative c'' {
  R1*4
  \repeat volta 2 {
    <bes bes'>4-^ 4-- 4-^ 4--
    <<
      \voiceOne { r <aes aes'>8. <bes bes'>16 <c c'>8. <bes bes'>16 <aes aes'>4 }
      \new Voice {
        \voiceTwo { r c,8. des16 es8. des16 c4 }
      }
    >>
    \oneVoice
    <f f'>4-^ 2.--
  } \alternative {
    { <f f'>4-^ 2.-- }
    { <f f'>4-^ 2.-- }
  }
}

piano_b = \relative c'' {
  \improvisationOn
  r2 r4 b8 b~
  b2 r
  b2 \times 2/3 { r4 b b }
  b2 r
  \repeat unfold 4 {
    r4 r8 b8~ b2
  }
  \times 2/3 { r4^"on solos" b b } \times 2/3 { b4 b b }
  R1
  \times 2/3 { r4 b b } \times 2/3 { b4 b b }
  \repeat unfold 2 {
    r4 r8 b8~ b2
  }
  r8 b r4 b r
  b4 r8 b~ b4 b8 b
  b8 b r4 b r
  b4 r8 b~ b2
  \improvisationOff
}

piano_c = \relative c'' {
  s1*8
  s1
  s1*3
  \improvisationOn
  \repeat unfold 4 {
    b4 r8 b8 r2
  }
  \improvisationOff
}

piano = \new Staff \with { \consists "Merge_rests_engraver" } {
  \globals
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \piano_a
  \piano_b
  \piano_c
}

theme = <<
  \soufflants
  \piano
>>

\include "utils/books.ly"
