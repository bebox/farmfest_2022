\version "2.23.9"
\include "../config/s02_frbo.ily"

\header {
  title = "SVOJE BRIGE SAD ODLOŽI"
  titlex = "Farmfest 2021"
  composer = "Sefora Nelson"
  style = ""
  broj = "6"
  tagline = \markup { \override #'(font-name . "JohnSans White Pro") \override #'(font-size . -3) { Izvorno: "\"Lege deine sorgen nieder\" von Sefora Nelson"
  } }
}

\paper {
  \aFourR
  %min-systems-per-page = #7
  %annotate-spacing = ##t
  %system-system-spacing.padding = #3.2
}

note = \relative c' {
  \key d \major
  \time 2/2

		%kitica1
		\mark \default %verse
		\partial 8
		d16 e | fis8 d16 e ~ e8 cis16 d ~ d8 h16 ( a ~ a8 ) 
		d16 e |fis8 d16 e ~ e8 cis16 h ~ h4 r8 
		d16 e | fis8 d16 e ~ e8 cis16 d ~ d fis8 e16 ~ e8. 
		a,16 | h8 d16 d ( e8 ) cis16 d ~ d8 r8 
		%refren
		\bar "" \break \markMojPraz
		d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4 
		d16 e fis a ~ | a8 fis16 e ~ e d d8 ~ d fis16 e ~ e8 d16 d ~ | d2 r4 
		d16 e fis a ~ | a8. fis16 ~ fis4 r8 r16 a,16 e'8 cis16 d ~ | d2 r4
		d16 e fis a ~ | a8 fis16 e ~ e8 d16 d ~ d8 fis16 e ~ e8 d16 d ~ | d2 ~ d4 r8 
		\bar "|."
	
}

tekst = \lyricmode {

	%verse 1
		\set stanza = #"1."
		Svo -- je bri -- ge sad o -- dlo -- ži, __
		na moj dlan ih sta -- vi sve. __
		Tvo -- je o -- bja -- šnje -- nje ne tre -- bam
		jer već te po -- zna -- jem. __

		%refrain

		Haj -- de o -- dlo -- ži __ sve na moj dlan. __
		Do -- đi o -- dlo -- ži, sve pre -- pu -- sti na moj dlan. __
		Haj -- de o -- dlo -- ži, __ pre -- pu -- sti sve, __
				jer tvo -- me Bo -- gu ni -- šta ni -- je pre -- vi -- še. __
}

tekstB = \lyricmode {
  	%verse 2

		\set stanza = #"2."
		Svo -- je stra -- ho -- ve o -- dlo -- ži, __
		sve što no -- ću mu -- či te. __
		Sa -- da mir ti da -- jem po -- nov -- no,
			 svoj mir ti da -- ru -- jem. __
}
  
tekstC = \lyricmode {
  	%verse 3

		\set stanza = #"3."
		Svo -- je grije -- he sad o -- dlo -- ži, __
		od -- mah pre -- daj i svoj sram. __
		Vi -- še ne mo -- raš ih no -- si -- ti,
			 jer za njih pla -- ćam sam. __
}

tekstD = \lyricmode {

	%verse 4

		\set stanza = #"4."
		Svo -- je su -- mnje sad o -- dlo -- ži, __
		ni -- su ve -- će od me -- ne. __
		Sad ti da -- jem na -- du po -- no -- vno
		i su -- mnja ne -- sta -- je. __
}

akordi = \chordmode {
  \set chordChanges = ##t
	s8
		d4 a/cis g2/h |
		d4 a/cis g2/h |
		d4 a/cis g/h a |
		g4 a d2 |
		g2 a2 |
		h2:m d2/fis |
		g2 a |
		d1 |
		g2 a2 |
		h2:m d2/fis |
		g2 a2 |
		d8*7
}

\score {
  <<
    \new ChordNames { \semiGermanChords \jazzChords  \shiftDurations #-1 #0  \akordi }
    \new Staff {  \shiftDurations #-1 #0  \note }
    \addlyrics { \tekst }
        \addlyrics { \tekstB }

    \addlyrics { \tekstC }

    \addlyrics { \tekstD }

  >>
  \layout {}
}

\markup {
  \vspace #1.2
  \smaller \italic Leadsheet: \hspace #2
  \huge {
    \rounded-box {
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) 2 \italic \teeny { intro } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { v.1. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { v.2. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { v.3. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus } } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 0) 1 \italic \teeny { v.4. } }
      \line { \pad-to-box #'(0 . 0) #'(-0.34 . 1.85) \bold { 2 \teeny \italic { chorus 2x } } }
    }
  }
}
