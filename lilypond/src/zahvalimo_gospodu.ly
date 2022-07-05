\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "ZAHVALIMO GOSPODU"
  titlex = "Farmfest 2021"
  composer = ""
  style = ""
  broj = "11"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Preuzeto iz Duhovne Pjesme (297)
  } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key g \major
  \time 4/4

  \markMojPoc
  g''8 fis h,8. g'16 ~ g8 fis h,4 |
  d1 |
  g8 fis h,8. g'16 ~ g8 fis h,4 |
  e1 |
  \break
  
  \markMojPon
  d,8 d g g a a h4 |
  g8 g c h a h a16( g8.) |
  d'8. d16 h8 h c c16( h) a4 |
  h8. c16 d8 c h a16( g) g4 |
  d8 d g g a a h4 |
  g8 g c h a h a16( g8.) |
  r1 |
  g8 g c h a h a16( g8.) |
  \break
  
  \markMoj
  \bar ".|:"
  d'4. d8 h4 h |
  c4 c8( h ~ h) a16( g ~ g4) |
  h4. c8 d4 c4 |
  h4 a8( g ~ g) g4. |
  \bar ":|."
}

tekst = \lyricmode {
  \repeat unfold 14 { \skip1 }
  \set stanza = "1."
  Za -- hva -- li -- mo Go -- spo -- du za do -- bro -- tu nje -- go -- vu!
  Bož -- ja mi -- lost bes -- kraj -- na, tra -- je vječ -- na vre -- me -- na.
  Da nam Krist pri -- ba -- vi spas, žr -- tvo -- va -- o se za nas.
  Žr -- tvo -- va -- o se za nas.
  Bož -- ja mi -- lost bes -- kraj -- na, __ tra -- je vječ -- na vre -- me -- na.
}

tekstB = \lyricmode {
  \repeat unfold 14 { \skip1 }
  \set stanza = "2."
  Vječ -- nog Bo -- ga hva -- li -- mo, pje -- smom ga pro -- sla -- vi -- mo!
  \repeat unfold 14 { \skip1 }
  Za -- hva -- li -- mo Go -- spo -- du, daj -- mo nje -- mu sla -- vu svu!
  Daj -- mo nje -- mu sla -- vu svu!
}

akordi = \chordmode {
  \set chordChanges = ##t
  e2:m g2 | c2. d4 |
  e2:m g2/h | c2. d4 |
  
  e2:m c | g h:m |
  c1 | c4 e:m d2 |
  e2:m c2 |
  g2 h:m | c1 |
  c4 e:m d2 |
  
  e2:m g/h | c2. d4 |
  e2:m g/h | c2. d4 |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { theme } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { theme + b.g. vocals } }
    }
  }
}
