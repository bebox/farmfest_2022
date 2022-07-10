\version "2.23.2"
\include "../config/include.ily"

\header {
  title = "U TVOJIM RUKAMA"
  titlex = "Farmfest 2021"
  composer = "Waiting For Steve"
  style = ""
  broj = "18"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: In Your Hand, On a Sunday
  } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'' {
  \key a \major
  \time 12/8
   
  \markMojPoc
  R1. |
  R1. |
  R1. |
  \break

  \markMojPonRight
  r4 h8 h4 cis8 a4. cis4 fis,8 |
  a8( gis) gis gis gis gis cis4 h8 a4. |
  r4 cis8 h4 cis8 a8( gis4) cis8 cis h |
  a4 a8 a4 h8 a2. |
  r4 cis8 h4 cis8 a4 a8 cis8 cis h |
  a4 gis8 a4 h8 a2. |
  r4 cis8 h4 cis8 a4. cis8 cis h |
  a8( gis4) cis8 cis cis d2. |
  \break

  \markMojCenter
  \bar ".|:-||"
  e2. ~ e4. ~ e4 d8 |
  d4 cis8 ~ cis4. ~ cis4. cis8 h cis |
  d4. cis a2. |
  e'8 e cis h4. e8 e cis h8( a4) |
  r4 a8 e' cis h h4. cis |
  a1. |
  \bar ":|."
}

tekst = \lyricmode {
Ti i -- sti si ka -- o ju -- čer, da -- nas i u -- vje -- ke.
Ti i -- sti si ma -- kar i o -- dem od te -- be.
Ti i -- sti si kad' ka -- žem da te ne po -- zna -- jem.
Ti i -- sti si, i -- sti si da, i -- sti si da. __
}

ref = \lyricmode {
Bog __ moj o -- tac. __ U tvo -- jim ru -- ka -- ma.
I -- sti si da, je -- di -- ni Bog.
Sad te -- bi se vra -- ćam ja. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  
  a2. a2./h |
  a2./cis d2.:maj7 |
  a2. h2.:sus4 |
  a2./cis d2.:maj7 |
  a2. a2./h |
  a2./cis d2.:maj7 |  
  a2. a2./h |
  a2./cis d2.:maj7 |
  
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
  a2. a2./cis |
  a2. a2./cis |
  d2. d4. a4./cis |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { ver. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { ver. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { [12-14] inst. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { [12-14] choir 2x} }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus (canon) } } }
    }
  }
}
