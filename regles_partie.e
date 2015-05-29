note
	description: "Règles de la partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	REGLES_PARTIE

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		do
			nb_instance.put (nb_instance.item + 1)

			taille_tableau := 8
			duree_partie := 60
			points_par_bloc := 1
			nb_temps_bonus := 5
			generer_liste_couleurs
			generer_liste_types
			generer_liste_types_probabilites
		end


feature -- Règles du jeu

	taille_tableau: INTEGER assign set_taille_tableau
		-- Nombre de blocs par ligne et nombre de lignes du tableau

	duree_partie: INTEGER assign set_duree_partie
		-- La durée d'une partie normale

	points_par_bloc: INTEGER assign set_points_par_bloc
		-- Le nombre de points que vaut un bloc détruit

	nb_temps_bonus: INTEGER assign set_nb_temps_bonus
		-- Le temps qui est ajouté lorsqu'un bloc TEMPS_BONUS est détruit

	liste_couleurs: LIST[COULEUR] assign set_liste_couleurs
		-- Liste des couleurs de blocs disponibles pour cette partie

	liste_types: LIST[TYPE_BLOC] assign set_liste_types
		-- Liste des types de blocs disponibles pour cette partie

	liste_types_probabilites: LIST[TYPE_BLOC] assign set_liste_types_probabilites
		-- Liste des types de blocs disponibles pour cette partie en fonction de leur probabilité


feature -- Setters

	set_taille_tableau(a_taille_tableau: INTEGER)
		-- Assigne une valeur à taille_tableau
		require
			taille_tableau_valide: a_taille_tableau >= 0
		do
			taille_tableau := a_taille_tableau
		ensure
			taille_tableau_set: taille_tableau = a_taille_tableau
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

	set_points_par_bloc(a_points_par_bloc: INTEGER)
		-- Assigne une valeur à points_par_bloc
		require
			points_par_bloc_valide: a_points_par_bloc >= 0
		do
			points_par_bloc := a_points_par_bloc
		ensure
			points_par_bloc_set: points_par_bloc = a_points_par_bloc
		end

	set_nb_temps_bonus(a_nb_temps_bonus: INTEGER)
		-- Assigne une valeur à nb_temps_bonus
		require
			nb_temps_bonus_valide: a_nb_temps_bonus >= 0
		do
			nb_temps_bonus := a_nb_temps_bonus
		ensure
			nb_temps_bonus_set: nb_temps_bonus = a_nb_temps_bonus
		end

	set_liste_couleurs(a_liste_couleurs: LIST[COULEUR])
		-- Création de la liste des couleurs disponibles
		do
			liste_couleurs := a_liste_couleurs
		ensure
			liste_couleurs_set: liste_couleurs = a_liste_couleurs
		end

	set_liste_types(a_liste_types: LIST[TYPE_BLOC])
		-- Création de la liste des types disponibles
		do
			liste_types := a_liste_types
		ensure
			liste_types_set: liste_types = a_liste_types
		end

	set_liste_types_probabilites(a_liste_types_probabilites: LIST[TYPE_BLOC])
		-- Création de la liste des types disponibles
		do
			liste_types_probabilites := a_liste_types_probabilites
		ensure
			liste_types_probabilites_set: liste_types_probabilites = a_liste_types_probabilites
		end



feature -- Méthodes

	generer_liste_couleurs
		-- Création de la liste des couleurs disponibles
		local
			l_liste_couleurs: LIST[COULEUR]
			l_couleur_1: COULEUR
			l_couleur_2: COULEUR
			l_couleur_3: COULEUR
			l_couleur_4: COULEUR
			l_couleur_5: COULEUR
		do
			create {ARRAYED_LIST[COULEUR]} l_liste_couleurs.make(5)
			create l_couleur_1.make("Bleu")
			create l_couleur_2.make("Jaune")
			create l_couleur_3.make("Rose")
			create l_couleur_4.make("Mauve")
			create l_couleur_5.make("Orange")

			l_liste_couleurs.extend(l_couleur_1)
			l_liste_couleurs.extend(l_couleur_2)
			l_liste_couleurs.extend(l_couleur_3)
			l_liste_couleurs.extend(l_couleur_4)
			l_liste_couleurs.extend(l_couleur_5)

			liste_couleurs := l_liste_couleurs
		end

	generer_liste_types
		-- Création de la liste des types disponibles
		local
			l_liste_types: LIST[TYPE_BLOC]
			l_type_1: TYPE_BLOC
			l_type_2: TYPE_BLOC
			l_type_3: TYPE_BLOC
			l_type_4: TYPE_BLOC
		do
			create {ARRAYED_LIST[TYPE_BLOC]} l_liste_types.make(4)
			create {TYPE_NORMAL} l_type_1.make
			create {TYPE_TEMPS_BONUS} l_type_2.make
			create {TYPE_ARC_EN_CIEL} l_type_3.make
			create {TYPE_DOUBLE_POINTS} l_type_4.make

			l_liste_types.extend(l_type_1)
			l_liste_types.extend(l_type_2)
			l_liste_types.extend(l_type_3)
			l_liste_types.extend(l_type_4)

			liste_types := l_liste_types

		end


		generer_liste_types_probabilites
		-- Création de la liste des types disponibles en fonction de leur probabilité
		local
			i: INTEGER
			l_liste_types_probabilites: LIST[TYPE_BLOC]
			l_type_1: TYPE_BLOC
			l_type_2: TYPE_BLOC
			l_type_3: TYPE_BLOC
			l_type_4: TYPE_BLOC
		do
			create {ARRAYED_LIST[TYPE_BLOC]} l_liste_types_probabilites.make(20)
			create {TYPE_NORMAL} l_type_1.make
			create {TYPE_TEMPS_BONUS} l_type_2.make
			create {TYPE_ARC_EN_CIEL} l_type_3.make
			create {TYPE_DOUBLE_POINTS} l_type_4.make

			from
				i := 0
			until
				i >= 16
			loop
				l_liste_types_probabilites.extend(l_type_1)
				i := i+1
			end

			l_liste_types_probabilites.extend(l_type_2)
			l_liste_types_probabilites.extend(l_type_3)
			l_liste_types_probabilites.extend(l_type_4)

			liste_types_probabilites := l_liste_types_probabilites

		end


feature {NONE}

	nb_instance:CELL[INTEGER]
		once
			create Result.put(0)
		end

invariant
	singleton_valide: nb_instance.item = 1


end
