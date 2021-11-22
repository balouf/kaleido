% Created on Mon Sep 20 15:23:38 CEST 2010
\version "2.22.0"


#(set-global-staff-size 25)
#(set-default-paper-size "a4")

\include "utils/AccordsJazzDefs.ly"

\paper { indent = 0\cm} 


\header {
	title = "Expression" 
 	composer = "Coltrane"
 	tagline = ""

}



\layout {
% ragged-last=##t
\context {
  \name ImproVoice
  \type "Engraver_group"
  \consists "Note_heads_engraver"
  \consists "Text_engraver"
  \consists "Pitch_squash_engraver"
  squashedPosition = #0
  \override NoteHead.style = #'slash
  \hide Stem
  \alias Voice
}
\context {
    \Staff
    \accepts ImproVoice
    \remove "Time_signature_engraver"
  }
  \inherit-acceptability "ImproVoice" "Voice"
 }


accords = \chords {
\cadenzaOn
	aes1:7+ s1~ s4
	e2:7+ ees1:7+ s
	g:7+.5- b:7+
	c:m7 g:7.9-5+ s2
	c1:m7 s2.
	ges1:7+.11+ a:7+ s2
	bes:7+ g:7+ bes:7+ g:7+
	b2:m7 s8 fis2:13
	a1:7+ a:sus7 s s
	d2:7+ s8. bes2.:7+ s16 d1:m
	bes4:7+ ees2:7+ aes2.:7+ ees4:7+ f1:m s2.
	c1:7+ a:7+ ges:7+.5- bes:7+
	f:sus7 f1:sus9 s1
	
}


theme = \new Staff {
	\set Staff.midiInstrument = "violin"
	\time 4/4
	\key c \major
	\clef treble
	\accidentalStyle modern-cautionary
	\relative c'' { 	
\cadenzaOn
		% Type notes here 
\compressEmptyMeasures
% A
aes2 aes4 ees16[ aes bes ees] ees8[ aes,] bes4. aes16[ ees] \tuplet 3/2 {aes4 bes ees} \bar"|"
\tuplet 3/2 {dis8[ e fis]} gis8[ gis] aes[ g32 aes bes16]~ bes4
\new ImproVoice {
bes,4^"Fill...." bes \cadenzaOff bes bes
}
r8 g'-[ g a]
\break
fis2. e8[ fis]
dis2. r4 
\once \override Glissando.style = #'zigzag
ees d8 c d2\glissando \bar"|"
\cadenzaOn
g,4
\new ImproVoice {
b b b b
}
aes8[ g] \bar"|"
\break
ees'2
\new ImproVoice {
b4 \cadenzaOff b b b
}
r8 f' \bar"|"
\tuplet 3/2 {f4 ges aes} des,4. cis16_[ cis] \bar"|"
\cadenzaOn
d[ e fis gis] a[ a a, e]
\cadenzaOff
a,2 r8 a''_[ a a] 
a[ g f g] fis[ e d e]
a[ g f g] fis[ e d e]
\cadenzaOn
d[ cis d cis b] cis2 \bar "|"
\break
\tuplet 3/2 {cis4 b a} \tuplet 3/2 {gis4 a b} \bar"|"
e,16_[ a b e] a[ b e8_]
\new ImproVoice {
b,4 b b b b b \cadenzaOff b b}
a8_[ a a d] \bar"||"
\break
\cadenzaOn
% B
d4 cis16_[ d e d] e[ fis g] \bar"|"
f8._[ ees16_] d[ c bes a] d8_[ e16 d e] \bar"|"
%f2.\bendBefore #-5 ees4 \bar"|"
  \override BendAfter.extra-offset = #'(-4.25 . -2)
  \override BendAfter.minimum-length = #2
\cadenzaOff f2.  es4 \bendAfter #4 \bar"|" 
d8._[ des16_] des[ c bes aes] g8\prall_[ f] \bar"|"
\cadenzaOn
g4 aes! r8 bes![ g\prall ees] \bar"|"
f1 r4 e4. d8 \bar"|"
e2\prall r4 d8_[ e] \bar"|"
cis2 r4 \cadenzaOff ees8_[ f] \bar"|"
ges4 f2 f4 \bar"|"
\tuplet 3/2 {f8 bes, a} f'2 f4 \bar"|"
f
\new ImproVoice {
b b b \bar"|" \cadenzaOn b b b b b b b b
}
\bar"||"

	}
}


\include "utils/books.ly"