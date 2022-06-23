\version "2.23.2"
\include "../config/s02_frbo.ily"

\header {
  title = "TI SI VJEČAN"
  titlex = "Farmfest 2022"
  composer = "Sebastijan Bahat"
  style = ""
  broj = "10"
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key a \major
  \time 4/4
   
  \markMojPoc
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  R1 |
  \bar ":|."
  \break

  %\markMojPon
    \once \override Score.RehearsalMark.self-alignment-X = #RIGHT
  \mark \markup { \box \bold A1 }
  R1 | R1 | R1 | R1 |
  \break

  \markMoj
  \bar "||"
  r2 r4 < \parenthesize e > |
  a4 a a gis ~ |
  gis4 a2. |
  r2 h4 cis ~ |
  cis4 a2. |
  r1 |
  a4 a a gis ~ |
  gis4 e2 fis4 ~ |
  fis2 r4 d |
  a'4 a a gis ~ |
  gis4 a2. |
  r4 a h cis ~ |
  cis4 a2. |
  r2 r4 e |
  a4 a a gis ~ |
  gis4 a2 a4 ~ |
  \bar "||"
  a2 a4 a ~ |
  a2 h4 cis ~ |
  cis4 a a a ~ |
  a4 e2 e4 |
  fis'4 e cis h ~ |
  h4 cis2 a4 ~ |
  a2 a4 h8( a |
  h2.) e,4 |
  e'4 d cis h ~ |
  h4 cis2 a4 ~ |
  a2 a4 h8( a) |
  h1 |
  d2 cis4 a ~ |
  a4 h2 h4 ~ |
  h1 |
  \break
  r4 a4 h d ~ |
  \bar "||"
  %\break
  
  \markMojCenter
  d4 cis2. |
  r2 e,4 e |
  cis'4 h a a ~ |
  a4 h( cis) cis ~ |
  cis1 |
  r4 a4 gis a ~ |
  a4 fis( e) a ~ |
  a4 d cis2 ~ |
  cis1 |
  r4 e,4 e e |
  cis'4 h a a ~ |
  a4 h a2 ~ |
  a1 |
  r4 a gis a ~ |
  a4 fis( e2 ~ |
  e1) |
  R1 |
  \bar "|."
}

tekstA = \lyricmode {
\set stanza = "1."
- Ži -- vot bez Bo -- ga je pra -- zan, 
pot -- pu -- ni pro -- ma -- šaj. __
Bez Nje -- ga sam ja -- dan, op -- te -- re -- ćen,
ne na -- la -- zim od -- mo -- ra. __


Jer ja __ ne mo -- gu bez te -- be,
ne bu -- di mi da -- le -- ko, __ da znam __
da vo -- diš me pot -- pu -- no, __
i da -- lje bri -- neš za __ me -- ne. __
}

tekstB = \lyricmode {
\set stanza = "2."
Go -- vo -- ri mi sa -- da, ja slu -- šam,
riječ tvo -- ja lije -- či me. __
U sr -- cu je dr -- žim, _ ne pu -- štam,
_ riječ tvo -- ja mje -- nja sve. __

Jer ja __ ne že -- lim bez te -- be,
_ da -- lje kroz o -- vo sve, __
i znam, __ da ne -- ćeš o -- sta -- vit me, __
jer da -- lje bri -- neš za __ me -- ne. __

%Ti si vječan, ja sam miran!
%(U tebi pravi odmor je, u tebi stvarni odmor je)
}

ref = \lyricmode {
Ti si vje -- čan, iz da -- lji -- ne mi po -- ma -- žeš, __
ja sam mi -- ran, sa to -- bom, __
u svo -- joj ru -- ci me dr -- žiš ti, __
ja sam mi -- ran. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  d1 | d1 |
  fis1:m | fis:m |
  a1 | a1 | a1 | a1 |
  
  fis2.:m g4 | g1 | d2. e4 | e1 |
  
  d1 | d1 | fis1:m | fis:m |
  a1 | a | a | a |
  d1 | d |
  fis1:m | fis:m | 
  a1 | a | a | a |
  
  h1:m | h:m | d | d |
  fis2.:m g4 | g1 |
  d2. e4 | e1 |
  fis2.:m g4 | g1 |
  d2. e4 | e1 |
  h1:m | fis:m | g | g |
  
  a1 | a | h:m | h:m |
  fis1:m | fis:m | g | g |
  a1 | a | h:m | h:m |
  g1 | g | fis2.:m d4 |
  fis2.:m d4 | d1 |
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \akordi }
    \new Staff { \note }
    \addlyrics { \tekstA \ref }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

%\markup {
%  \vspace #1.2
%  \smaller \italic Leadsheet: \hspace #1
%  \huge {
%    \rounded-box {
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { intro } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { verse } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { [12-14] instr. } }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \italic \teeny { [12-14] choir 2x} }
%      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus (canon) } } }
%    }
%  }
%}
