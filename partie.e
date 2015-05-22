note
	description: "Classe contenant les informations sur la partie en cours"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	PARTIE

inherit
	REGLES_PARTIE_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		local
		do
			set_score(0)
			set_temps_restant(regles_partie.duree_partie)

			create tableau.make
			create selection.make(tableau.liste_blocs.at(1).at(1)) -- par défaut, le premier bloc est sélectionné

		end


feature -- Attributs

	score:INTEGER assign set_score
		-- Nombre de points accumulés depuis le début de la partie

	temps_restant:INTEGER assign set_temps_restant
		-- Temps restant à la partie

	tableau:TABLEAU
		-- Tableau associé à la partie

	selection: SELECTION
		-- Carré représentant les 4 blocs sélectionnés



feature -- Setters

	set_score(a_score: INTEGER)
		-- Assigne une valeur à score
		do
			score := a_score
		end

	set_temps_restant(a_temps_restant: INTEGER)
		-- Assigne une valeur à temps_restant
		do
			temps_restant := a_temps_restant
		end


feature -- Méthodes

	ajouter_points(a_nb_blocs_detruits: INTEGER)
		-- Ajoute des points en fonction du nombre de blocs détruits et de points_par_bloc
		-- Les blocs DOUBLE_POINTS comptent pour deux
		require
			nb_blocs_detruits_valide: a_nb_blocs_detruits >= 0
		local
			l_score_a_assigner: INTEGER
		do
			l_score_a_assigner := score + (a_nb_blocs_detruits * regles_partie.points_par_bloc)
			set_score(l_score_a_assigner)

		end

	ajouter_temps
		-- Ajoute le temps défini par nb_temps_bonus lorsqu'un bloc temps bonus est détruit
		local
			l_temps_a_assigner: INTEGER
		do
			l_temps_a_assigner := temps_restant + regles_partie.nb_temps_bonus
			set_temps_restant(l_temps_a_assigner)

		end







end
