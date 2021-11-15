%---------------------------------
%\include "_/AccordsJazzDefs.ly"
%
% on peut enregistrer ces commandes dans un fichier "AccordsJazzDefs.ly" par exemple
% pour bénéficier de ces définition il faut substituer la police de base du \chormode
% par la police spéciale "lilyjazzchord" ou les altérations sont définies par les caractères > = b et < = #
%---------------------------------

% modification de la procedure "chordRootNamer"
%---- définition des altérations dans les accords -------
#(define (chordNamer pitch majmin)	;majmin is un argument nécessaire à "chordNamer" mais inutile ici
	(let* ((alt (ly:pitch-alteration pitch)))
		(make-line-markup
			(list
				(make-simple-markup 
					(vector-ref #("C" "D" "E" "F" "G" "A" "B")
						(ly:pitch-notename pitch)))
				(if (= alt 0)			; alteration ?
					(markup "")		;non
					(if (= alt FLAT)	; b ou #
						(markup ">")
						(markup "<")
					)
				)
			)
		)
	)
)

%----- commandes markup pour simplifier l'ecriture de l'interprétation des accords -----
%----- cette partie peut etre adaptée a vos convenances ( "MI" et "MA" que je n'aime pas par exemple)
% commande accord mineur "acMin" les accords mineurs sont symbolysés par un "m" small
#(define-markup-command (acMin layout props extension) (string?)
	(interpret-markup layout props
		(markup #:small "m" #:super extension)))

% commande accord majeur "acMaj" les accords majeurs sont symbolysés par un "M" small
#(define-markup-command (acMaj layout props extension) (string?)
	(interpret-markup layout props
		(markup #:super "M" #:super extension)))

% commande accord altéré "acAlt" aguments : exposant puis 2 valeurs qui seront supperposées entre parenthèses 
#(define-markup-command (acAlt layout props strA strB strC) (string? string? string?)
	(interpret-markup layout props
	  	(markup 
			#:super strA
			#:fontsize 1.5 "["
			#:fontsize -4 
			#:raise 1.8
			#:column (strB strC) 
			#:fontsize 1.5 "]"
	  	)
	)
)
#(define-markup-command (acMinAlt layout props strA strB strC) (string? string? string?)
	(interpret-markup layout props
	  	(markup 
                        #:small "m"
			#:super strA
			#:fontsize 1.5 "["
			#:fontsize -4 
			#:raise 1.8
			#:column (strB strC) 
			#:fontsize 1.5 "]"
	  	)
	)
)


% modification de la propriété "chordNameExceptions" 
%----- Définition des exceptions pour les accords -----
% 
%	degrés 			markup				% écriture
chJazzMusic = {
% accords 1ere tierce mineure - 3  notes
	< c ees ges >		-\markup \super "dim."		% :dim
	< c ees g >		-\markup \acMin #""		% :m

% accords 1ere tierce mineure - 4  notes
	< c ees ges beses >	-\markup \super "7dim" 		% :dim7
	< c ees gis >		-\markup \acMin #"aug"		% :m5+ (Ab/C)	
	< c ees g a >		-\markup \acMin #"6"		% :m6            
%	< c ees ges bes >	-\markup \acMin #"7 (>5)"		% :m7.5-         
	< c ees g bes >		-\markup \acMin #"7"		% :m7            
	< c ees gis bes >	-\markup \acMin #"7 (<5)"		% :m7.5+         
	< c ees g b >		-\markup \acMin #"M7"	 	% :m7+           
	< c ees g d' >		-\markup \acMin #"add9"		% :m5.9
	
% accords 1ere tierce mineure - 5  notes et +
	< c ees g a d' >	-\markup \acMin #"6/9"		% :m6.9
	< c ees g bes des' >	-\markup \acMin #"7(>9)"	% :m7.9-
	< c ees g bes d' >	-\markup \acMin #"9"		% :m9
	< c ees ges bes d' >	-\markup \acMin #"9(>5)"	% :m9.5-
	< c ees g b d' >	-\markup \acMin #"9(M7)"	% :m9.7+
	< c ees g bes dis' >	-\markup \acMin #"7(<9)"	% :m7.9+
	< c ees g bes f' >	-\markup \acMin #"7(add 11)"	% :m7.11
	< c ees g bes a' >	-\markup \acMin #"7(add 13)"	% :m7.13
	< c ees g bes d' f' >	-\markup \acMin #"11"		% :m11
	< c ees ges bes d' f' >	-\markup \acMin #"11(>5)"	% :m11.5-
	< c ees g bes d' f' a'>	-\markup \acMin #"13"		% :m13
	< c ees bes f' >	-\markup \acMinAlt #"7" #"11" #"omit 5"% :m7.11^5	
	< c ees ges bes f' >	-\markup \acMinAlt #"7" #"11" #">5"% :m7.11^5	
	< c ees ges b d' >         -\markup \acMinAlt #"9" #"<7" #">5"% m9.5-.7+



% accords 1ere tierce majeure - 3 notes
	< c e ges>		-\markup \super "5>"		% :5-
	< c e gis>		-\markup \super "aug"	 	% :aug

% accords 1ere tierce majeure - 4 notes
        < c e g b> -\markup \acMaj #"7"
	< c e g a d'>		-\markup {
		\super "6"
		\hspace #-0.5 \raise #0.7 \tiny "/"
		\hspace #-0.5 \tiny "9"
		}	% :6.9
%accord spécial altéré
	<c e g bes c'>		-\markup \super "7(alt)" 	% :c:8
%	< c e g a d'>		-\markup \acAlt #"" #"6" #"9"	% :6.9
%	< c e g b>		-\markup \acMaj #"7"		% :maj
	< c e g b fis'>		-\markup \acMaj #"7<11"		% :maj7.11+
	< c e ges b>		-\markup \acMaj #"7>5"		% :maj.5-
	< c e gis b>		-\markup \acMaj #"7<5"		% :maj.5+
	
	< c e ges bes>		-\markup \super "7(>5)"		% :7.5-
	< c e gis bes>		-\markup \super "aug7"		% :7.5+
	< c e g d'>		-\markup \super "add9"		% :5.9

% accords 1ere tierce majeure - 5 notes et +
	<c e g b d'>		-\markup \acMaj #"9"		% :maj9
	< c e g b d' fis'>	-\markup \acMaj #"9<11"		% :maj9.11+
	<c e g bes des'>	-\markup \super "7(>9)"			% :9-
	<c e ges bes des'>	-\markup \acAlt #"7" #">9" #">5"	% :9-.5-
	<c e gis bes des'>	-\markup \acAlt #"7" #">9" #"<5"	% :9-.5+
	<c e g bes des' aes'>	-\markup \acAlt #"7" #">9" #">13"	% :9-.13-
	<c e gis bes d'>	-\markup \acAlt #"7" #"9" #"<5"		% :9.5+
	<c e g bes d' fis'>	-\markup \super "9(<11)"		% :9.11+
	<c e g bes dis'>	-\markup \super "7(<9)"			% :9+
	<c e ges bes dis'>	-\markup \acAlt #"7" #"<9" #">5"	% :9+.5-
	<c e gis bes dis'>	-\markup \acAlt #"7" #"<9" #"<5"	% :9+.5+
	<c e g bes dis' aes'>	-\markup \acAlt #"7" #"<9" #">13"	% :9+.13-
	<c e fis gis bes>	-\markup \acAlt #"7" #"<4" #"<5"	% :7.4+.5+
	<c e g bes des' fis'>	-\markup \acAlt #"7" #"<11" #">9"	% :7.9-.11+
	<c e g bes dis' fis'>	-\markup \acAlt #"7" #"<11" #"<9"	% :7.9+.11+
	<c e g bes fis'>	-\markup \super "7(<11)"		% :7.11+
	<c e g bes es'>		-\markup \super "7(>10)"		% :7.10-
	<c e g bes aes'>	-\markup \super "7(>13)"		% :7.13-

	<c e g b d' f'>		-\markup \acMaj #"11"		% :maj11
	<c e fis g b>		-\markup \acMaj #"7(<4)"	% :maj7.4+
	<c e fis g bes>		-\markup \super "7(<4)"		% :7.4+
	<c e g aes bes>		-\markup \super "7(>6)"		% :7.6-

	< c e g b d' a' >	-\markup \acMaj #"13"		% :maj13 
	< c e g bes d' a' >	-\markup \super "13" 		% :13 
	< c e g bes des' a' >	-\markup \super "13(>9)" 	% :13.9-
	< c e g bes d' fis' a'>	-\markup \super "13(<11)"	% :13.11+
	<c e g bes des' fis' a'>-\markup \acAlt #"13" #"<11" #">9"	% :13.9-.11+
	<c e g bes fis' aes'>-\markup \acAlt #"7" #">13" #"<11"	% :7.11+.13-

% accord sus.
	< c d g>		-\markup \super "sus2"	% :sus2
	< c f g>		-\markup \super "sus"	% :sus4
	< c f g bes>		-\markup \super "7sus"	% :sus4.7
	< c f g bes d'>		-\markup \super "9sus"	% :sus4.7.9
	< c f g bes a'>		-\markup \super "13sus4"% :sus4.7.13
%
}

%variable permettant d'appeler les exceptions
chJazz = #(append (sequential-music-to-chord-exceptions chJazzMusic #t)ignatzekExceptions)	

%modification des propriétés du contexte Chordnames
\layout {
	\context { \ChordNames
		chordRootNamer = #chordNamer	% substitution du nomage des accords	
		chordNameExceptions = #chJazz	% substitution de l'affichage des extensions
		\override ChordName #'font-name = #"lilyjazzchord" 
		\override ChordName #'font-size = #2
	}
}
%-------------------------------
% Fin des définitions
%-------------------------------
