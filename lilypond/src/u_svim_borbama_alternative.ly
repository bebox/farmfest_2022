\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "U SVIM BORBAMA"
  titlex = "Alternativna verzija"
  composer = "Bob Fitts"
  style = "Arr. Ruben Horvat"
  broj = "1"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Praise to the Lord, Integrity's Hosanna! Music } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key f \major
  \time 4/4
  
  \repeat volta 2 {
  
  \partial 4
  f8 g |
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \mark \default
  a8. f16 ~ f8 c ~ c2 |
  r2 c'8. b16 ~ b8 a ~ |
  a8 g16( f ~ f2.) |
  r2 r4 f8 g |
  a8. f16 ~ f8 c ~ c2 |
  r2 c'8 c16 b ~ b8 a ~ |
  a8 g16( f ~ f2.) | \break
  r2 r8 b a a |
   
  g2 r8 a g a |
  g2 r8 g a b |
  c2 r8 a c d ~ |
  d8 c4 c8 ~ c c c a16( g) |
  f2 r4 b8 a |
  g4 g a b8 b ~ |
  b8 g4. r8 a b c ~ |
  c1 | \break
  r2 d4 c |
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #0.3
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \mark \default
  \bar "||"
  a2 a ~ |
  a4 r4 f8. g16 ~ g8 b |
  a1 |
  r1 |
  a2 a ~ |
  a4 r4 f8. g16 ~ g8 b |
  a1 |
  \alternative {
    \volta 1 {
      r1 |
    }
    \volta 2 {
      r2 r4 r8 a |
    }
  }
  }
  
  \markMoj
  a8. g16 ~ g8 g ~ g4 r8 a |
  a8. g16 ~ g8 g ~ g4 r8 a |
  a8. g16 ~ g8 g ~ g4 c8 a |
  a8. g16 ~ g8 g ~ g8 a( g) f |
  f1 |
  \bar "|."
}

tekst = \lyricmode {
  U svim bor -- ba -- ma __ ti si __ moj __ mir, __
  ka -- da slom -- ljen sam, __ sna -- gu da -- ješ __ mi. __
  Ti sna -- ga si __ i lju -- bav sva __
  i ži -- vot moj, __ mo -- ja ra -- dost, mo -- ja u -- tje -- ha. __
  
  Sla -- vim tvo -- ju div -- nu mi -- lost i pje -- vam. __
  
  Pje -- vam: Sla -- va __ Go -- spo -- du mom! __
  Sla -- va __ Go -- spo -- du mom! __
  Jer do -- bar je __ i mi -- lo -- stiv, __
  on lju -- bi nas, __ on je pre -- di -- van __ Go -- spod moj. __
}

ref = \lyricmode {

}

akordi = \chordmode {
  \set chordChanges = ##t
  s4
  f2. f4/a |
  b2 g:m7 |
  f2. f4/a |
  b2 g:m7 |
  f2. f4/a |
  b2 g:m7 |
  f2. f4/a |
  b2 g:m7 |
  
  b1 |
  c1 |
  d1:m |
  a1:m |
  b1 |
  g1:m |
  es1 |
  f1:sus4/b |
  f2:sus4/b c |
  
  f2 d:m |
  f2/a g:m7 |
  f2 d:m |
  f2/a b |
  f2 d:m |
  f2/a g:m7 |
  f2 d:m |
  f2/a b |
  f2/a b |
  
  g2.:m f4/a |
  b1 |
  g2.:m f4/a |
  b1 |
  f1 |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus x2 } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) C \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { outro } }
    }
  }
}
