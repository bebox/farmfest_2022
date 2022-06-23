\version "2.23.9"
\include "../config/s02_frbo.ily"

\header {
  title = "TI MI GODIŠ"
  titlex = "Farmfest 2021"
  composer = "Tobi Wörner"
  style = ""
  broj = "8"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: Du Tust, Von Jesus bewegt } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
%  \once \override Score.MetronomeMark.self-alignment-X = #-1.05
%  \once \override Score.MetronomeMark.padding = #3
    %\tempo 4 = 120
    \key e \major
%    \set Score.rehearsalMarkFormatter = #format-mark-box-letters
    
    %dio A
%    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \once \override Score.RehearsalMark.self-alignment-X = #-1.5
    \once \override Score.RehearsalMark.padding = #1.4
   \mark \default
%    \repeat volta 2 {
%    \partial8
  r4 h8 h gis' fis e fis |
  h,4 h8 h8 a'4 gis |
  fis4 fis8 e fis fis gis a ~ |
  a8 gis h, h gis'8 fis16 fis16 ~ fis e16 e8 |
  r4 r8 h gis' fis e fis ~ |
  fis8 gis8 h,8 h a'4 gis |
  fis4 r8 h,8 fis' fis e fis ~ |
  fis8 gis ~ gis4 r8 fis4 e8 |
  \bar "||"
  
    \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \once \override Score.RehearsalMark.self-alignment-X = #0.5
    \once \override Score.RehearsalMark.padding = #1
  \mark \default
  r4 r8 e8 gis4 h8 h |
  e,4 r8 e8 a8. gis16 ~ gis8 fis |
  h,4 r8 h8 a'8. gis16 ~ gis8 fis |
  e4 r8 e a8. gis16 ~ gis8 fis |
  e4 r8 e8 gis8. h16 ~ h8 h |
  e,4 r8 e a8. gis16 ~ gis8 fis |
  h,4 r8 h8 a'4 gis |
  fis8 fis e8 fis ~ fis4 r4 |
  \bar "||"
  
      \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature)
    \once \override Score.RehearsalMark.self-alignment-X = #0.5
    \once \override Score.RehearsalMark.padding = #1
  \mark \default
  h4. gis8 ~ gis4 r4 |
  fis16 fis8 fis16 ~ fis16 gis8 a16 ~ a16 gis8 fis16 ~ fis8  e8 |
  h'4. gis8 ~ gis4 r4 |
  fis16 fis8 fis16 ~ fis16 gis8 a16 ~ a16 gis8 fis16 ~ fis8 e |
  h'8. gis16 ~ gis8 fis ~ fis8 e fis8 e |
  fis8. gis16 ~ gis8 a ~ a4 gis8 gis16( fis |
  e4) h8 a'8 ~ a h4 h8 ~ |
  h2. r4 |
  \bar "|."
}

tekst = \lyricmode {
\set stanza = #"1. "
%\skip4 \skip4
Sr -- ce tra -- ga za sre -- ćom, du -- ša že -- li dom,
ko -- jim god smje -- rom kre -- nem, dan u -- tro -- šen u -- lu -- do.
Ja te -- žim za mi -- rom, svud ću tra -- ži -- ti,
Na kra -- ju tog pu -- ta, __ si Ti.

Ti da -- ješ ra -- dost, i dom pri -- pre -- maš
Ti či -- niš sre -- tnim, i kri -- vnju pra -- štaš
Ti mir svoj da -- ješ, i riječ o -- dr -- žiš
Ti lju -- bav da -- ru -- ješ mi. __
}

ref = \lyricmode {
Ti mi __ go -- diš u du -- bi -- ni du -- še
Ti si __ ka -- o me -- lem ra -- ni Bo -- že
Ti me tra -- žiš za -- lu -- tam li __ po -- tpu -- no, __
da po -- tpu -- no. __
}

tekstDva = \lyricmode {
\set stanza = #"2. "
_ Za lju -- ba -- vlju če -- znem, ne -- znam pre -- sta -- ti,
A -- li ne mo -- gu na -- ći ni -- gdje to što pru -- žaš Ti.
Moj grijeh tre -- ba o -- prost, sve ću pro -- ba -- ti,
Na kra -- ju te pri -- če, __ si Ti.
}

akordi = \chordmode {
   \set chordChanges = ##t
  e1 | e |
  h1 | h |
  a1/cis a |
  h1 | h |
  e1 | e |
  h1 | h |
  a1/cis | a |
  h1 | h |
  e1 | h/e |
  a1 | h |
  cis1:m | h |
  a1 | h |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse 1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      %\line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { solo } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { verse 2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { bridge } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus 2x } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 3 \italic \teeny { outro } }
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
