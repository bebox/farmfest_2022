\version "2.23.9"
\include "../config/s02_frbo.ily"

\header {
  title = "U KRISTU SAMO"
  titlex = "Farmfest 2021"
  composer = "Keith Getty"
  style = "Stuart Townend"
  broj = "9"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: "In Christ Alone, 2001 Thankyou Music"
  } }
}

\paper {
  \aFourL
  min-systems-per-page = #5
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c'{
  \key c \major
  \time 3/4

   
  \markMojPoc
  \partial 8*3
  g8 a c |
  d4 d8. e16 d8. c16 |
  a4 ~ a8 g a8. c16 |
  c2. |
  
    r4 r8 \bar "" \break \markMojPraz g a8. c16 |
  c4. g8 a c |
  d4 ~ d8 \parenthesize g,8 e'8 d16 c |
  a8 e' d4. c8 |
  c4. g8 a8. c16 |
  c4. g8 a c |
  d2 e8 d16 c |
  a8 e' d4. c8 |
  c4. \bar "" \break \markMojPraz c8 e g |
  a4\( a8\) a8[ g e] |
  d4. c8 c' h16\( h\) |
  a4\( a8\) a8[ g e] |
  d4. g,8 a8. c16 |
  c4. g8 a c |
  d4 ~ d8 g,8 e'8 d16 c |
  a8 e' d4. c8 |
  c2
  \bar "|."
}

tekst = \lyricmode {
\repeat unfold 13 { \skip1 }
\set stanza = "1."
U Kri -- stu sa -- mo na -- da je, __
_ On mi je svje -- tlo, sna -- ga, sve.
On stije -- na je i te -- melj čvrst,
u bu -- ri i kroz pu -- sti -- nje.
O kak -- va lju -- _ bav, du -- bok mir
kad strah i __ _ ne -- _ mir ne -- sta -- ju.
Moj tje -- ši -- telj u sve -- mu sve,
u Kri -- sto -- vu lju -- bav uz -- dam se. __
}

tekstB = \lyricmode {
\repeat unfold 13 { \skip1 }
\set stanza = "2."
U Kri -- stu Bog o -- bja -- vi se,
On pot -- pu -- ni Bog i čo -- vjek je.
Dar pra -- ve -- dan, dar lju -- ba -- vi,
pre -- zren On bije -- še, od -- ba -- čen.
Kad na tom kri -- _ žu u -- mro je,
gnjev Bo -- žji __ _ bi __ _ za -- do -- vo -- ljen
jer sva -- ki grijeh na Nje -- mu bje. __
_ Ži -- vim jer I -- sus u -- mro je. __
}

tekstC = \lyricmode {
\repeat unfold 13 { \skip1 }
\set stanza = "3."
U grob mu tije -- lo po -- lo -- že, __
_ od ta -- me bi On u -- bi -- jen.
Tad u -- skr -- snu na sla -- van Dan,
iz gro -- ba moć -- no u -- sta -- de.
Dok sto -- ji sad __ _ u po -- bije -- di,
grijeh si -- lu u me -- _ ni iz -- gu -- bi.
Da, On je moj, nje -- gov sam ja, __
_ Kri --sto -- vom krv -- lju ku -- pljen sam. __
}

tekstD = \lyricmode {
\repeat unfold 13 { \skip1 }
\set stanza = "4."
Bez o -- su -- de i stra -- ho -- va,
u me -- ni je si -- la Kri -- sto -- va.
Od dje -- tinj -- stva do sta -- ro -- sti,
sud -- bi -- nom On za -- po -- vije -- da.
Ljud -- ske me sple -- tke, nit' si -- le  zla,
o -- dvo -- jit __ _ ne -- će od Gos -- po -- da.
Sve do tog slav -- nog po -- vrat -- ka, __
_ dr -- ži me si -- la Kri -- sto -- va. __
}

akordi = \chordmode {
  \set chordChanges = ##t
  \skip 8*3
  g2.:m7 | d:m7 | c2 f4/c |
  
  c2 f4 | c2 f4 | g2 c4/e | f4 d:m7 f/g | c2 f4/g |
  c2 f4| g2 c4/e | f4 d:m7 f/g | c2 c4/e |
  f2 c4/e | g2 c4/e | f2 a4:m7 | g2 f4/g |
  c2 f4 | g2 c4/e | f4 d:m7 f/g | c2
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords \transpose c d \akordi }
    \new Staff { \transpose c d \note }
    \addlyrics { \tekst }
    \addlyrics { \tekstB }
    \addlyrics { \tekstC }
    \addlyrics { \tekstD }
  >>
  \layout {}
}

\markup {
  \vspace #0
  \smaller \italic Leadsheet: \hspace #1
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { v.1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { v.2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { v.3. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 1 \italic \teeny { } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 2 \italic \teeny { v.4. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 3 \teeny \italic { chorus 2x} } }
    }
  }
}
