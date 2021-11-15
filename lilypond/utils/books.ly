\book {
%  \bookOutputSuffix #(string-append suffix "Ut")
	\header{
	instrument = "(version Ut)"
	}
\score {
	<<
	\transpose c' c' {\accords}
	\transpose c' c' {\theme}
	>>

  \layout {
\context {
      \Score
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
\score {
 \unfoldRepeats 
 	<<
	\transpose c' c' {\accords}
	\transpose c' c' {\theme}
	>>
 \midi {}
}
}

\book {
 \bookOutputSuffix "-Eb"
	\header{
	instrument = "(version Eb)"
	}
\score {
	<<
	\transpose es c' {\accords}
	\transpose es c' {\theme}
	>>
  \layout {
\context {
      \Score
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
}

\book {
 \bookOutputSuffix "-Bb"
	\header{
	instrument = "(version Bb)"
	}
\score {
	<<
	\transpose bes c' {\accords}
	\transpose bes c' {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
}

% \book {
%	#(set! paper-alist (cons '("169" . (cons (* 18.8 cm) (* 33.3 cm))) paper-alist))
%\paper {
%  #(set-paper-size "169")
%}
% \bookOutputSuffix "-Bbpano"%
	%\header{
	%instrument = "(version Bb)"
	%}
%\score {
%	<<
%	\transpose bes c' {\accords}
%	\transpose bes c' {\theme}
%	>>
%   \layout {
%\context {
%      \Score
%      \override SpacingSpanner
%      #'common-shortest-duration = #(ly:make-moment 1 2)
%    }
%  }
%}
%}


\book {
 \bookOutputSuffix "-F"
	\header{
	instrument = "(version F)"
	}
\score {
	<<
	\transpose f c {\accords}
	\transpose f c {\theme}
	>>
   \layout {
\context {
      \Score
      \override SpacingSpanner
      #'common-shortest-duration = #(ly:make-moment 1 2)
    }
  }
}
}
