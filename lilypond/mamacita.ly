% Created on Mon Sep 20 15:23:38 CEST 2010

\version "2.24.1"


#(set-global-staff-size 24)

#(set-default-paper-size "a4")


\include "utils/AccordsJazzDefs.ly"


\paper { indent = 0\cm} 



\header {

	title = "Mamacita" 

 	composer = "Joe Henderson"

 	tagline = ""

}



accords = \chords {
\repeat volta 2 {f1:7.11 s s s}
  \repeat segno 2 {
    \repeat volta 2 {f:7.11 s s s
        bes:9 s f:7.11 s4. d:7.9+ s4
        g8:m7 c4.:13 g8:m7 c4.:13
        f8:m7 bes4.:13 f8:m7 bes4.:13
        f1:7 s4. ges:13 s4
      }
  \volta 1 {
    f1:7.11 s s s bes:9 s f:7.11 s
    c:13 bes:13 f:7.11 s4. ges:13 s4
    \repeat volta 2 {
      f1:7.11 s s s bes:9 s f:7.11 s
      c:13 bes:13
      \alternative {{f1:7.11 s2 ges:13 }
              {f1:7.11 s2. ges4:13}}
    }
  }
  \volta 2 {\section}
}
\repeat volta 2 {f1:7.11 s}
}


staffViolon = \new Staff {
	\time 4/4
	\tempo 4 = 176
	\set Staff.midiInstrument = "trumpet"

	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary

	\relative c'' { 	
 % Type notes here 
\compressEmptyMeasures
\repeat volta 2 {r1 r r r2 r4 r8 \parenthesize g}
\break
\mark \default
\repeat segno 2 {
  \repeat volta 2 {
  f4-. c8 es8~ 2~ 2. r8 g f4-. c8 8 es c es c~ c4. g'8 f4. c'8
  bes4-. f8 8 aes f aes f8~ 4. g8-\bendAfter #-2 r4 r8 g
  f es c bes es c es c r4 r8 f r2
  bes8 c8~ 4 es8 c8~ 4 aes8 bes8~ 4 des8 bes8~ 4
  r c,8 c es c es f8~ 4. aes8-\bendAfter #-2 r4 r8 \parenthesize g^\markup{\coda}
  }
\volta 1 {
\break
\mark \default
r1 r r r r r r r r r r r2 r8 f-. c'-. es~
\break
\mark \default
\repeat volta 2 {
  es c es4-. f2~ 2 r8 f,-. c'-. es~
  es b c b c2~ 2 r8 f,-. bes-. es~
  es bes es4-. f2~ 2 r8 f,-. bes-. es~
  es b c b c2~ 2 r8 c, g' c~
  c2.. b8 bes2~ 8 a f aes~
\alternative {{aes2.. aes8-\bendAfter #-2 r2 r8 f-. c'-. es\laissezVibrer}
{aes,2..\repeatTie_"Solos on B*+C" 8~ 2 r4 es'-^}}
}
\break
} 
\volta 2 \volta #'() {
  \section
  \sectionLabel \markup{\coda}
}
}
\repeat volta 2 {
f,-. c8 es8~ 2~^"Fade out" 2. r8 g
}
}
}


staffHarmonie = \new Staff {

	\time 4/4
	\tempo 4 = 176
	\set Staff.midiInstrument = "trumpet"

	\key f \major
	\clef treble
	\accidentalStyle modern-cautionary
<<
\relative c'' { 	
\repeat volta 2 {r1 r r r2 r4 r8 \parenthesize es}
\break
\mark \default
\repeat segno 2 {
  \repeat volta 2 {
  c4-. a8 bes8~ 2~ 2. r8 es c4-. a8 8 bes a bes a~ a4. es'8 c4. aes'8
  f4-. d8 8 es d es d8~ 4. es8-\bendAfter #-2 r4 r8 es
  c bes a f bes a bes g r4 r8 c r2
  f,8 bes8~ 4 s8 bes8~ 4 es,8 aes8~ 4 s8 aes8~ 4
  s1 s2 r4 r8 \parenthesize es'^\markup{\coda}
  }
\volta 1 {
\break
\mark \default
r1 r r r r r r r r r r r2 s
\break
\mark \default
\repeat volta 2 {
  s1 s s s s s s s s s
\alternative {{s s }
{s s }}
}
\break
} 
\volta 2 \volta #'() {
  \section
  \sectionLabel \markup{\coda}
}
}
\repeat volta 2 {
c4-. a8 bes8~ 2~ 2. r8 es
}
	}
	

\relative c'' { 	
\repeat volta 2 {r1 r r r2 r4 r8 \parenthesize bes}
\break
\mark \default
\repeat segno 2 {
  \repeat volta 2 {
     a4-. es8 c8~ 2~ 2. r8 bes' a4-. es8 8 f es f es~ es4. bes'8 a4. es'8
  d4-. aes8 8 f aes f aes8~ 4. c8-\bendAfter #-2 r4 r8 bes
  a f es c f es f es r4 r8 fis r2
  c8 es8~ 4 f8 es8~ 4 bes8 d8~ 4 es8 d8~ 4
  r c8 c es c es f8~ 4. aes8-\bendAfter #-2 r4 r8 \parenthesize g^\markup{\coda}
  }
\volta 1 {
\break
\mark \default
r1 r r r r r r r r r r r2 r8 f-. c'-. es~
\break
\mark \default
\repeat volta 2 {
  es c es4-. f2~ 2 r8 f,-. c'-. es~
  es b c b c2~ 2 r8 f,-. bes-. es~
  es bes es4-. f2~ 2 r8 f,-. bes-. es~
  es b c b c2~ 2 r8 c, g' c~
  c2.. b8 bes2~ 8 a f aes~
\alternative {{aes2.. aes8-\bendAfter #-2 r2 r8 f-. c'-. es\laissezVibrer}
{aes,2..\repeatTie_"Solos on B*+C" 8~ 2 r4 es'-^}}
}
\break
} 
\volta 2 \volta #'() {
  \section
  \sectionLabel \markup{\coda}
}
}
\repeat volta 2 {
f,-. c8 es8~ 2~_"Fade out" 2. r8 g
}
	}
>>

}



theme=\staffViolon


\include "utils/books.ly"



theme=\staffHarmonie


\header {

	title = "Mamacita (Harmony)" 
}


\bookOutputName "mamacita_harmony"


\include "utils/books.ly"


%{
convert-ly (GNU LilyPond) 2.22.2  convert-ly: Processing `'...
Applying conversion:     Le document n'a pas été modifié.
%}
