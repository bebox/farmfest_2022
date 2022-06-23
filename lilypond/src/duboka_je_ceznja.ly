\version "2.23.9"
\include "../config/s02_frbo.ily"

\header {
  title = "DUBOKA JE ČEŽNJA"
  titlex = "Farmfest 2021"
  composer = "Trish Morgan, Ray Goudie"
  style = "Ian Townend, Dave Bankhead"
  broj = "3"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Lord we long for you, Kingsway's Thankyou Music } }
}

\paper {
  \aFourL
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'' {
  \key e \major
  \time 4/4
  
  \markMojPoc
  r4 gis8 gis16 gis16 ~ gis8 e8 fis8 gis8  |
  r4 a8 gis8 gis4 fis4 |
  r4 fis8 fis16 fis16 ~ fis8 dis8 e8 fis8 |
  fis16 gis8 gis16 ~ gis4 r2 |
  r4 gis8 gis8 fis4 e4 |
  r4 gis8 gis8 gis4 e4 |
  r4 a8 gis8 a8 gis8 a8 h8 |
  h4.( a16 gis16) fis2 |
  
  \markMoj
  r2  h4 h8 h8 |
  h4.( e,8) e2 |
  r2 h'4 h4 |
  h4.( e,8) e2 |
  r2 h'4 h8 h8 |
  h4.( e,8) e2 |
  e4 e8 dis16 e16 ~ e8 gis8 fis8 e8 |
  e1 |
  \bar "|."
}

tekst = \lyricmode {
\set stanza = #"1. "
%\skip4 \skip4
Du -- bo -- ka je če -- žnja na -- ših sr -- ca, Go -- spo -- de, da sna -- gom Du -- ha svog
ti is -- cije -- liš na -- šu zem -- lju i za -- poč -- neš pro -- bu -- đe -- nje.
}

ref = \lyricmode {
Is -- cije -- li na -- rod, na -- šu zem -- lju!
Is -- cije -- li na -- rod! O, iz -- lij svoj Duh na nas ti!
}

tekstDva = \lyricmode {
\set stanza = #"2. "
Go -- spo -- de, tvoj Duh se pri -- bli -- ža -- va, sna -- žan val će nas pre -- pla -- vi -- ti
pra -- ve -- dno -- šću, o -- pro -- šte -- njem. Mo -- li -- mo za pro -- bu -- đe -- nje!
}

akordi = \chordmode {
   \set chordChanges = ##t
  e1 |
  a2 e4 h4 |
  fis2:m7 h4:11 a4
  e2. h4/dis |
  cis1:m |
  gis1:m7 |
  fis2:m7 e2/gis |
  a2:sus2 a2 |
  \break
  
  e2 e2:sus2/gis |
  a2:sus2 a2 |
  e2 e2:sus2/gis |
  a2:sus2 a2 |
  e2 e2:sus4/gis |
  a2:sus2 a2 |
  fis2:m7 h2:11 |
  e1 |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekst \ref }
    \addlyrics { \tekstDva }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus 2x } } }
    }
  }
}
%\markup {
%  \hspace #11.8
%  \huge {
%    \rounded-box {
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) { 4 \teeny \italic { solo } } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \teeny \italic modulation:+1/2 }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { chorus 1. } } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 4 \teeny \italic { :23-24 } } }
%    }
%  }
%}

%\markup {
%\vspace #2
%\smaller \italic Leadsheet: \hspace #2
%		\huge {
%		\rounded-box {
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny vers }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 2.05) \bold { 1 \teeny \italic chorus } }
%			\line { \pad-to-box #'(0 . 0) #'(0 . 2.05) 3 \teeny \italic bridge }
%			\line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) \bold { 1 \italic \teeny chorus \bold \tiny ×2 } }
%		}
%	}
%}

%{
convert-ly (GNU LilyPond) 2.18.2  convert-ly: Processing `'...
Applying conversion: 2.17.97, 2.18.0
%}


%{
convert-ly (GNU LilyPond) 2.19.59  convert-ly: Processing `'...
Applying conversion: 2.19.2, 2.19.7, 2.19.11, 2.19.16, 2.19.22,
2.19.24, 2.19.28, 2.19.29, 2.19.32, 2.19.40, 2.19.46, 2.19.49
%}
