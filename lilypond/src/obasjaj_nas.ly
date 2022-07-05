\version "2.23.9"
\include "../config/include.ily"

\header {
  title = "OBASJAJ NAS"
  titlex = "Farmfest 2021"
  composer = "Albert Frey"
  style = ""
  broj = "4"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: "\"Gnade und Wahrheit\" von Albert Frey, D&D Medien 2001 ©"
  } }
}

\paper {
  \aFourR
  min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  	\key g \major
	\markMoj
	g'8 g g g ~ g g fis fis ~ |
	fis8 e4. r2 |
    	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 h8 |
	g'8 g g g ~ g fis4 fis8 ~ |
	fis8 e4. r2 |
	d8 d d d ~ d e4 d8 ~ |
	d2 r4 r8 d8 |
	c'8 c c c ~ c h4 h8 ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2 r4 r8 g8 |
	c8 c c c ~ c h h h ~ |
	h8 a4. r2 |
	g8 g g g ~ g h4 h8 ~ |
	h2. r4 |
	\break
	
        \markMoj
  	h4( a8) a8 ~ a4 d,4 |
	h'4( a8) a ~ a4 r4 |
	a4( g8) g ~ g4 d4 |
	a'4( g8) g ~ g4 r4 |
	h4( a8) a ~ a4 d,4 |
	h'4( a8) a ~ a4 r8 h8 |
	c4 c8 c ~ c h4 h8 ~ |
	h2. r4 |
	h4( a8) a ~ a4 d,4 |
	h'4( a8) a ~ a4 r4 |
	a4( g8) g ~ g4 d4 |
	a'4( g8) g ~ g4 r4 |
	h4( a8) a ~ a4 d,4 |
	h'4( a8) a ~ a4 g |
	g1 |
	r1 |
	\bar "|." 
}

tekst = \lyricmode {
I -- sti -- ni gle -- dam u o -- či,
sto -- jim u svje -- tlu tvom.
Zbog mi -- lo -- sti tvo -- je mo -- gu
pri -- mi -- ti ži -- vot nov. __
Za -- cje -- lju -- ješ mo -- je ra -- ne,
znaš mo -- je sla -- bo -- sti. __
Uz te -- be se vi -- še ne bo -- jim,
pje -- vam pun ra -- do -- sti. __
}

ref = \lyricmode {
I -- su -- se, svije -- tli __ mi -- lo -- šću svo -- jom.
I -- su -- se, do -- đi, __ ra -- svije -- tli ta -- mu svu. __
Sr -- ca nam mije -- njaj mi -- lo -- šću svo -- jom.
I -- su -- se, o -- ba -- sjaj nas!
}

akordi = \chordmode {
  \set chordChanges = ##t
 	e1:m | c1 | g1 | d1 |
	e1:m | c | g | d |
	a1:min7 | d | c | g |
	a1:min7 | d | c | h |
	
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | dis1:dim | e:m |
	a1:m7 | d2:sus4 d2 | g1 | e:m7 |
	a1:m7 | d2:sus4 d2 | g1 | g1 |
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
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) B \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus 2x } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) A \italic \teeny { verse } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { B \teeny \italic { chorus 2x } } }
    }
  }
}
