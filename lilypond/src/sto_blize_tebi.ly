\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "ŠTO BLIŽE TEBI"
  titlex = "Farmfest 2021"
  composer = "Trish Morgan"
  style = ""
  broj = "7"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: "\"Closer to You\" by Trish Morgan, 1991 Kingsway's Thankyou Music" } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key e \major
  \time 4/4
  
  \markMoj
  r1 | r1 | r1 | r1 |
  
  \markMojPonRight \break
  e2 h8 cis dis fis ~ |
  fis8 e4 cis8 dis e4 fis8 ~ |
  fis2 cis8 dis e gis ~ |
  gis8 fis4 e4 dis8 cis h ~ |
  h2 h8 cis dis fis ~ |
  fis8 e4 cis8( dis8) e4 fis8 ~ |
  fis2 cis8 dis e gis ~ |
  gis8 fis4 h4 a4 gis8 ~ |
  
  \markMoj
  gis4 r8 gis8 gis gis4 gis8 ~ |
  gis8 h4. a4 gis8 e8 ~ |
  e4 r8 cis8 dis e4 gis8 ~ |
  gis8 fis4 e8( ~ e8 dis) cis h ~ |
  h2 h8 cis dis fis ~ |
  fis8 e4 cis8( dis) e4 fis8 ~ |
  fis2 cis8 dis e gis ~ |
  gis8 fis4 e4 dis4 e8 ~ |
  e2. r4 |
  \bar "|."
}

tekst = \lyricmode {
\skip2
Što bli -- že te -- bi, Go -- spo -- de moj, __
bli -- že, da ču -- jem tvoj ti -- hi glas, __
da tvo -- ju vo -- lju spo -- zna -- jem, __
svo -- ju po -- dre -- dim pot -- pu -- no. __

Na -- dah -- ni me, pro -- či -- sti me, __
jer če -- žnja sr -- ca mo -- ga je __
da te ži -- vo -- tom pro -- sla -- vim, __
bu -- dem ti bli -- že, Bo -- že moj. __
}

ref = \lyricmode {

}

akordi = \chordmode {
   \set chordChanges = ##t
cis1:m | fis | a | e2 h/dis | 
cis1:m | fis | a | h1| 
e1 | cis:m | fis:m | a2 a2/h |
e1 | e:7 | a1 | h2 a/h |
e1 | cis:m | fis:m | a2 a2/h |
e1 | 
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus 2x } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { outro } }

    }
  }
}