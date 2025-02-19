% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.24.0"

#(set-global-staff-size 24)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"



#(define ((my-stencils start) grob) 
(let* ((par-list (parentheses-interface::calc-parenthesis-stencils grob))
        (null-par (grob-interpret-markup grob (markup #:null)))) 
  (if start 
     (list (car par-list) null-par) 
     (list null-par (cadr par-list))))) 

startParenthesis = #(define-music-function (note) 
(ly:music?) 
"Add an opened parenthesis to the left of `note" 
#{ 
  \once \override Parentheses.stencils = #(my-stencils #t) 
  \parenthesize $note 
#}) 

endParenthesis = #(define-music-function (note) (ly:music?) 
"Add a closed parenthesis to the right of `note" 
#{ 
  \once \override Parentheses.stencils = #(my-stencils #f) 
  \parenthesize $note 
#}) 


\paper { indent = 0\cm} 

\header {
	title = "Gertrude's Bounce" 
 	composer = "Richie Powell"
 	tagline = ""

}


accords = \chords {
  c2 c:7 f:6 f:m6 c1 d2:7 g:7
  c2 c:7 f:6 f:m6 c c4/g gis:dim a2:m a:m/g
  fis:m7.5- es:dim7 c:9/e c/e d:m7 g:7  c1:m7 f:7
  \repeat volta 2 {
    bes1:6 c2:m7 f:7 d:m7 g:m7 c:m7 f:7 bes:sus4.9 bes:7 es:maj7 aes:9 s8 des2:6 s4.
  }
  \alternative {{c2:m7 f:7}{c:m7 bes:6}}
  ges4.:maj7 e:maj7.11+ es2:maj7.11+ d4.:maj7.11+ des:maj7.11+ 
  c2..:maj7.11+ b1:maj7 s8
  g4.:maj7 f:maj7.11+ e2:maj7.11+ es4.:maj7.11+ d:maj7.11+ 
  des2..:maj7.11+ b1:maj7 s8
  bes1:6 c2:m7 f:7 d:m7 g:m7 c:m7 f:7
  bes:sus4.9 bes:7 es:maj7 aes:9 s8 des2:6 s4. c2:m7 bes:6
  \repeat volta 2 {
    bes1:6 c2:m7 c:dim7 d:m7 g:7 c:m7 f:7 bes:sus4.9 bes:7 es:maj7 aes:9 des1:maj7
  }
  \alternative {{c2:m7 f:7}{c:m7 bes:6}}
  ges1:maj7 s b:maj7 s g:maj7 s c:maj7 f:7
  bes1:6 c2:m7 c:dim7 d:m7 g:7 c:m7 f:7 
  bes:sus4.9 bes:7 es:maj7 aes:9 des1:maj7 c2:m7 bes:6
  d:m7 g:7.5-
  c2 c:7 f:6 f:m6 c1 d2:7 g:7
  c2 c:7 f:6 f:m6 \repeat volta 2 {c1 s}
}

voix = \relative c' { 	
 % Type notes here 
\compressEmptyMeasures
% \set Timing.beamExceptions = #'()
\set Score.rehearsalMarkFormatter = #format-mark-box-alphabet
<<
	\voiceOne {
	e8^"Intro" f g4-. g-. g-. a8 b c4-. f,4. f8
	e f g4-. c,-. c-. d1 \break 
	e8 f g4-. g-. g-. a8 b c4-. f,4. f8
	e f g4-. c, d c1~^"Add piano"
	c2 b'4. a8 \break g4-. g8 fis g4 c
	f,4-. f8 e f4 b es,4-. es8 d es4 g f2
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	c8 d e4-. e-. e-. f8 g a4-. d,4. d8
	c d e4-. a,-. a-. c2 b
	c8 d e4-. e-. e-. f8 g a4-. d,4. d8
	c d e4-. c d e1~
	e2 es d c c b bes1 a2
	}
>>
\oneVoice
r8 f' g a
\break
\key bes \major
\mark \default
\repeat volta 2 {
  bes4-. d, a'4. g8 f a, bes f' r es4.
   d8 es f4-. bes,-. bes -. c8 d c bes a \parenthesize f g' f~
  f4. bes,8 r4 r8 g' f4 es8 f r es r4 r8 es des es r des4.
}
\alternative {
  {
    c8 <d b> <es bes> <f a,> r f g a
  }
  {
    c,4 d8 bes r4 f'-.^"Pn" \break 
  }
}
\mark \default
bes4. bes8~ bes4 a~ a gis~ gis8 g r4 fis2.. fis8~ fis1
\break 
b4. b8~ b4 ais~ ais a~ a8 gis r4 g2.. fis8~ fis2 r8 f^"Hns" g a
\break \mark \default \bar "||"
  bes4-. d, a'4. g8 f a, bes f' r es4.
   d8 es f4-. bes,-. bes -. c8 d c bes a \parenthesize f g' f~
  f4. bes,8 r4 r8 g' f4 es8 f r es r4 r8 es des es r des4.
  \mark \markup { \musicglyph "scripts.coda" }
  c4 d8 bes r2 \break \bar ".|:-||"
  \mark \default
  \repeat volta 2 {
    r1 r2 r r r r r r r r r r1
  }
  \alternative { {r2 r} {r r} }
  \bar "||" \break \mark \default
  r1 r r r r r r r
  \bar "||" \break \mark \default
  r1 r2 r r r r r r r r r r1
  
  r2 \override Parentheses.font-size = #5
  \startParenthesis  r8 f' g \endParenthesis a 
\break \bar "|."
\mark \markup { \musicglyph "scripts.coda" }
r2 r \bar "||"
<<
	\voiceOne {
	e8 f g4-. g-. g-. a8 b c4-. f,4. f8
	e f g4-. c,-. c-. d1 \break 
	e8 f g4-. g-. g-. a8 b c4-. f,4. f8
	\repeat volta 2 {e8 f g4-. c, d c1^"Fade"}
	}
	\new Voice {
	\override NoteHead.color = #red 
	\voiceTwo 
	c8 d e4-. e-. e-. f8 g a4-. d,4. d8
	c d e4-. a,-. a-. c2 b
	c8 d e4-. e-. e-. f8 g a4-. d,4. d8
	\repeat volta 2 {c8 d e4-. g, gis a1}
	}
>>
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 244
	\set Staff.midiInstrument = "trumpet"
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\voix
}

theme=\staffViolon

\include "utils/books.ly"
