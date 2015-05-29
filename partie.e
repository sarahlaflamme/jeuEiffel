note
	description: "Classe contenant les informations sur une partie"
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
			score := 0
			create heure_depart.make_now
			duree_partie := regles_partie.duree_partie
			temps_restant := duree_partie
			temps_ecoule := 0

			create tableau.make
			create selection.make(tableau.liste_blocs.at(1).at(1)) -- par défaut, le premier bloc est sélectionné

		end


feature -- Attributs

	score:INTEGER assign set_score
		-- Nombre de points accumulés depuis le début de la partie

	heure_depart: TIME
		-- Heure à laquelle la partie a commencé

	temps_ecoule: INTEGER
		-- Temps écoulé depuis le début de la partie

	temps_restant:INTEGER assign set_temps_restant
		-- Temps restant à la partie

	tableau:TABLEAU
		-- Tableau associé à la partie

	selection: SELECTION
		-- Carré représentant les 4 blocs sélectionnés

	duree_partie: INTEGER
		-- Durée de la partie (ajustée en fonction des bonus reçus)



feature -- Setters

	set_score(a_score: INTEGER)
		-- Assigne une valeur à score
		require
			score_valide: a_score >= 0
		do
			score := a_score
		ensure
			score_set: score = a_score
		end

	set_duree_partie(a_duree_partie: INTEGER)
		-- Assigne une valeur à duree_partie
		require
			duree_partie_valide: a_duree_partie >= 0
		do
			duree_partie := a_duree_partie
		ensure
			duree_partie_set: duree_partie = a_duree_partie
		end

	set_temps_ecoule(a_temps_ecoule: INTEGER)
		-- Assigne une valeur à temps_ecoule
		require
			temps_ecoule_valide: a_temps_ecoule >= 0
		do
			temps_ecoule := a_temps_ecoule
		ensure
			temps_ecoule_set: temps_ecoule = a_temps_ecoule
		end

	set_temps_restant(a_temps_restant: INTEGER)
		-- Assigne une valeur à temps_restant
		require
			temps_restant_valide: a_temps_restant >= 0
		do
			temps_restant := a_temps_restant
		ensure
			temps_restant_set: temps_restant = a_temps_restant
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
			score := l_score_a_assigner
		end

	ajouter_temps(a_nb_bonus_temps: INTEGER)
		-- Ajoute le temps défini par nb_temps_bonus lorsqu'un bloc temps bonus est détruit
		require
			nb_bonus_temps_valide: a_nb_bonus_temps >= 0
		local
			l_temps_supplementaire: INTEGER
		do
			l_temps_supplementaire := a_nb_bonus_temps * regles_partie.nb_temps_bonus
			duree_partie := duree_partie + l_temps_supplementaire
		end

	calculer_temps_ecoule
		-- Calcule le temps écoulé depuis le début de la partie
		local
			l_heure_present: TIME
		do
			create l_heure_present.make_now

			temps_ecoule := l_heure_present.seconds - heure_depart.seconds

		end

	calculer_temps_restant
		-- Calcule le temps restant à la partie
		do
			temps_restant := duree_partie - temps_ecoule
		ensure
			temps_restant_mis_a_jour: temps_restant = duree_partie - temps_ecoule
		end


invariant
	score_initialise: score /= Void
	heure_depart_initialise: heure_depart /= Void
	temps_ecoule_initialise: temps_ecoule /= Void
	temps_restant_initialise: temps_restant /= Void
	tableau_initialise: tableau /= Void
	selection_initialise: selection /= Void
	duree_partie_initialise: duree_partie /= Void


end
