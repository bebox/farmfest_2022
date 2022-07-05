\version "2.23.2"
\include "../config/include.ily"

\header {
  title = "TI SI VJEČAN"
  titlex = "Farmfest 2022"
  composer = "Sebastijan Bahat"
  style = "Arr. Ruben Horvat"
  broj = "10"
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

noteA = \relative c' {
  \key a \major
  \time 4/4
     \repeat volta 2 {
       
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
  gis4 a2 a4 |
  
  \once \override Score.RehearsalMark.Y-offset = #0.16
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.2)
  \mark \default
  \bar "||"
  
  r2 a4 a ~ |
  a2 h4 cis ~ |
  cis4 a a a ~ |
  a4 e2 e4 |
  cis'4 h a g ~ |
  g4 a2 fis4 ~ |
  fis2 fis4 gis8( fis |
  fis2.) e4 |
  cis'4 h a g ~ |
  g4 a2 fis4 ~ |
  fis2 fis4 gis8( fis) |
  gis1 |
  d'2 cis4 a ~ |
  a4 h2 h4 ~ |
  h1 |
  \break
  r4 a4 h d ~ |
  \bar "||"
  %\break
  
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Staff.BarLine #'extra-spacing-width = #'(0 . 1.5)
  \once \override Score.RehearsalMark.Y-offset = #0.4
  \mark \default
  d4 cis2. |
  r2 e,4 e |
  cis'4 h a a ~ |
  a4 h( cis) cis ~ |
  cis1 |
  r4 a4 gis a ~ |
  a4 fis( e) a ~ |
  a4 d( cis) cis4 ~ |
  cis1 |
  r4 e,4 e e |
  cis'4 h a a ~ |
  a4 h( a) a4 ~ |
  a1 |
  r4 a gis a ~ |
  a4 fis( e2 ~ |
  e1) |

  \alternative {
    \volta 1 {
    r1 |
    r1 |
    }
    \volta 2 {
    r1 |
    r4 a h d \laissezVibrer |
    }
  }
  }
  <<
    {
  \once \override Score.RehearsalMark.self-alignment-X = #CENTER
  \once \override Score.RehearsalMark.Y-offset = #4.6
  \bar ".|:"
  \mark \default
    \repeatTie d4 cis2. ~ |
    cis1 ~ |
    cis1 |
    r4 a h d ~ |
    d4 cis2. ~ |
    cis1 ~ |
    cis1 |
    r4 a h d ~ |
    \bar ":|."
    d4 cis2. ~ |
    cis1 ~ |
    cis1 |
    r1
    r1
    \bar "|."
    }
    \\
    {
    r2 r4 a4 |
    a2 fis4 fis ~ |
    fis2 e4 e ~ |
    e4 fis2 e4 ~ |
    e2. a4 |
    a2 fis4 fis ~ |
    fis2 e4 e ~ |
    e4 d( cis) d ~ |
    d2 r4 a' |
    a2fis4 fis ~ |
    fis2 e4 e ~ |
    e4 fis2 e4 ~ |
    e1 |
    }
  >>
}


tekstA = \lyricmode {
\set stanza = "1."
- Ži -- vot bez Bo -- ga je pra -- zan, 
pot -- pu -- ni pro -- ma -- šaj. __
Bez Nje -- ga sam ja -- dan, op -- te -- re -- ćen,
ne na -- la -- zim od -- mo -- ra.


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
i znam, __ "" ne -- ćeš o -- sta -- vit me, __
jer da -- lje bri -- neš za __ me -- ne. __ 

\repeat unfold 37 {""}
U Te -- bi pra _ -- vi od _ -- mor __ _ je, __ _ _
u Te -- bi stvar _ -- ni od _ -- mor __ _ je. __ _ _
U Te -- bi pra _ -- vi od _ -- mor je. __ _
}

ref = \lyricmode {
Ti si vje -- čan, iz da -- lji -- ne mi po -- ma -- žeš, __
ja sam mi -- ran, sa __ to -- bom, __
u svo -- joj ru -- ci me dr -- žiš __ ti, __
ja sam mi -- ran. __

%Ti si vje -- čan, __ ja sam mi -- ran! __ Ti si vje -- čan!
Ti si vje _ -- čan, __ _ _ _ _ _ _ _
"" ja sam mi _ -- ran! __ _ _ _ _ _ _ _
"" Ti si vje -- čan! __ _ _ _ _ _ _ _ _
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
  g1 | g | fis2.:m d4 | d1 |
  fis2.:m d4 | d1 |
  fis2.:m d4 | d1 |
  
  h1:m | h:m | d | d |
  a1 | a | fis:m | fis:m |
  h1:m | h:m | d | d |
  a1 |
}

\score {
  <<
    \new ChordNames {  \jazzChords \akordi }
    \new Staff { \noteA }
    \addlyrics { \tekstA \ref }
    \addlyrics { \tekstB }
  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A - A1 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { verse I./II. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) C \italic \teeny { bridge I./II. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { D \teeny \italic { chorus } } }
    }
  }
  "x2, "
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) E \italic \teeny { outro } }
    }
  }
}
