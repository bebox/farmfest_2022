\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "PSALAM 40"
  titlex = "Farmfest 2022"
  composer = "Filip Horvat"
  style = ""
  broj = "1"
  %tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Name, Album } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key des \major
  \time 4/4
  
  \markMoj
  \partial 8 \parenthesize des8 |
  f8 ges as des, es es r8 \parenthesize es |
  f8 es des c ~ c b r8 b8 |
  f'8 ges as des, es es r8 es |
  b'8 as f es des4 r8 des8 |
  f8 ges as des, es es r8 es |
  f8 es des c ~ c b r8 b8 |
  f'8 ges as des, es es r8 es |
  b'8 as f es ~ es8 des r4 |
  \break
  
  \markMoj
  \tuplet 3/2 {as'8 as as} \tuplet 3/2 {as8 as as} b8 f r4 |
  \tuplet 3/2 {es8 es es} \tuplet 3/2 {es8 es des } es f16 es r8 des |
  ges16 f8 es16 ~ es des8 ges16 ~ ges f8 es16 ~ es des8. |
  ges16 f8 es16 ~ es des8 ges16 ~ ges8 f16 es ~ es des8. |
  \tuplet 3/2 {as'8 as as} \tuplet 3/2 {as as as} b8 f r4 |
  \tuplet 3/2 {es8 es es} \tuplet 3/2 {es8 es des} es8 f16 es r4 |
  ges16 f8 es16 ~ es des8 ges16 ~ ges f8 es16 ~ es des8. |
  ges16 f8 es16 ~ es des8 ges16 ~ ges8 f16 es ~ es des8. ~ |
  des2. r4 |
  \bar "|."
}

tekstA = \lyricmode {
  \set stanza = "1."
  - Uz -- dah se u Jah -- vu _ uz -- da -- njem sil -- nim,
  i on se "k me" -- ni pri -- gnu, u -- sli -- ša va -- paj moj.
  Iz -- vu -- če me iz ja -- me, iz pro -- pa -- sti kal -- ne;
  na hrid mi sta -- vi no -- ge i ko -- ra -- ke krije -- pi.
  
  Ni -- su ti mi -- le ni žr -- tve,
  ni -- su ti mi -- li ni pri -- no -- si.
  O -- tvo -- ri -- o __ si u -- ši mo -- je:
  pa -- lje -- ni -- ce ti __ ne tra -- žiš.
  Mi -- li -- je Bo -- že je me -- ni
  vo -- lju i riječ tvo -- ju vr -- ši -- ti.
  Svje -- do -- čim za prav -- du tvo -- ju,
  za -- kon tvoj u sr -- cu no -- sim. __
}

tekstB = \lyricmode {
  \set stanza = "2."
  On da mi no -- vu pje -- smu, to pje -- sma je sla -- ve.
  Od stra -- ha svi će sta -- vit u Jah -- vu uz -- da -- nje.
  Ču -- de -- sa mno -- ga tvo -- riš i rav -- na ti ne -- ma.
  _ Že -- lim sve o -- bja -- vit, al' pre -- vi -- še ih __ je.
}

akordi = \chordmode {
  \set chordChanges = ##t
  ges8
  ges2 es:m | b1:m |
  ges2 es:m | b1:m |
  ges2 es:m | b1:m |
  ges2 es:m | b2.:m ges4/as |
  
  des1 | b:m | ges | ges:m |
  des1 | b:m | ges | ges:m/as | des | 
}

\score {
  <<
    \transpose des es
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    %\new Staff { \note }
    \transpose des es { \note }
    \addlyrics { \tekstA }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus x2 } } }
    }
  }
}
