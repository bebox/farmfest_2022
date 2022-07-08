\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "DUBOKA JE ČEŽNJA"
  titlex = "Alternativna verzija"
  composer = "Trish Morgan, Ray Goudie"
  style = "Arr. Ruben Horvat"
  broj = "1"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Lord we long for you, Kingsway's Thankyou Music } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'' {
  \key f \major
  \time 4/4
  
  \markMoj
  r1 | r1 | r1 | r1 |
  r1 | r1 | r1 | r1 |
  \bar ":|."
  r1 | r1 | r1 | r1 |
 \bar "||"
 \break
  
  \markMoj
  r2 a4 a8 a ~ |
  a4 f g a |
  r2 b4 a |
  a2 g |
  r2 g4 g8 g ~ |
  g4 e f g |
  g8 a4 a8 ~ a2 ~ |
  a1 |
  r2 a4 a |
  g2 f |
  r2 c'4 c |
  c2 f, |
  r2 b4 a8 b ~ |
  b4 a b c |
  c2.( b8 a) |
  g1 |
  

  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  \once \override Score.RehearsalMark.Y-offset = #0
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \bar "||"
  \mark \default
  
  r1 |
  c2 c4 c |
  c2.( f,4) |
  f1 |
  r1 |
  c'2 c2 |
  c2.( f,4) |
  f1 |
  r1 |
  c'2 c4 c |
  c2.( f,4) |
  f2 r2 |
  f2 f4 e8 f ~ |
  f4 a g f ~ |
  f4 f2. ~ |
  f1 |
  \bar "||"
  
    \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  %\override Score.RehearsalMark.extra-spacing-width = #'(0 . 0)
  \once \override Score.RehearsalMark.Y-offset = #0.2
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \bar "||"
  \mark \default
  r1 |
  r1 |
  r1 |
  r1 |
  \bar "|."
}

tekst = \lyricmode {
\set stanza = #"1. "
%\skip4 \skip4
Du -- bo -- ka __ je če -- žnja na -- ših sr -- ca, Go -- spo -- de, __ da sna -- gom Du -- ha svog __
ti is -- cije -- liš na -- šu zem -- lju i za -- poč -- neš pro -- bu -- đe -- nje. __
}

ref = \lyricmode {
Is -- cije -- li na -- rod, __ na -- šu zem -- lju! __
Is -- cije -- li na -- rod! __ O, iz -- lij svoj Duh na nas __ ti! __
}

tekstDva = \lyricmode {
\set stanza = #"2. "
Go -- spo -- de, __ tvoj Duh se pri -- bli -- ža -- va, sna -- žan val __ će nas pre -- pla -- vi -- ti __
pra -- ve -- dno -- šću, o -- pro -- šte -- njem. Mo -- li -- mo __ za pro -- bu -- đe -- nje! __
}

akordi = \chordmode {
  \set chordChanges = ##t
  d1:m | c2/e f | b1 | b | 
  f1 | f | c1 | c2 f4 c/e |
  d1:m | c | b1 | b |
  
  d1:m | c | f | b2 a:m |
  b1 | b | g:m | g:m |
  d1:m | d:m | c | c |
  f1 | f | b1 | b2 g:m |
  
  d1:m | c2/e f | b1 | b | 
  f1 | f | c1 | c2 f4 c/e |
  d1:m | c2/e f | b1 | b |
  g1:m | c | b4 \parenthesize es2. |
  s1 |
 
  d1:m | c | b1 | b |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
    \addlyrics { \tekstDva }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) D \italic \teeny { break } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { chorus x2 } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { C \teeny \italic { [41 - 44] x2, F major } } }
    }
  }
}