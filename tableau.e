note
	description: "Tableau de 8x8 blocs dans lequel se déroule la partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	TABLEAU

inherit
	REGLES_PARTIE_SHARED
	SONS_FACTORY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		local
			i:INTEGER -- Compteur pour chaque ligne
			j:INTEGER -- Compteur pour chaque bloc de la ligne
			ligne: LIST[BLOC]
			nouveau_bloc: BLOC
		do
			nb_blocs_detruits := 0
			nb_bonus_temps := 0

			create {ARRAYED_LIST[ARRAYED_LIST[BLOC]]} liste_blocs.make(regles_partie.taille_tableau)

			from
				i := 1
			until
				i > regles_partie.taille_tableau
			loop
				-- création de la ligne
				create {ARRAYED_LIST[BLOC]} ligne.make(regles_partie.taille_tableau)

				-- ajout des blocs dans la ligne
				from
					j := 1
				until
					j > regles_partie.taille_tableau
				loop
					create nouveau_bloc.make_hasard(j, i)
					ligne.extend(nouveau_bloc)
					j := j+1
				end

				-- ajout de la ligne dans le tableau
				liste_blocs.extend (ligne)
				i := i+1

			end


		end

feature -- Attributs

	liste_blocs:LIST[LIST[BLOC]] assign set_liste_blocs
			-- Liste des blocs qui se trouvent présentement dans le tableau.
			-- Chaque liste correspond à une ligne du tableau

	nb_blocs_detruits: INTEGER
		-- Nombre de blocs qui ont été détruits mais dont les points n'ont pas été calculés

	nb_bonus_temps: INTEGER
		-- Nombre de blocs Temps Bonus qui ont été détruits dont le temps n'a pas été ajouté



feature -- Setters

	set_liste_blocs(a_liste_blocs: LIST[LIST[BLOC]])
		-- Assigne la liste des blocs du tableau
		do
			liste_blocs := a_liste_blocs
		ensure
			liste_blocs_set: liste_blocs = a_liste_blocs
		end

	set_nb_blocs_detruits(a_nb_blocs_detruits: INTEGER)
		-- Assigne le nombre de blocs detruits
		require
			nb_blocs_detruits_valide: a_nb_blocs_detruits >= 0
		do
			nb_blocs_detruits := a_nb_blocs_detruits
		ensure
			nb_blocs_detruits_set: nb_blocs_detruits = a_nb_blocs_detruits
		end

	set_nb_bonus_temps(a_nb_bonus_temps: INTEGER)
		-- Assigne le nombre de bonus temps
		require
			nb_bonus_temps_valide: a_nb_bonus_temps >= 0
		do
			nb_bonus_temps := a_nb_bonus_temps
		ensure
			nb_bonus_temps_set: nb_bonus_temps = a_nb_bonus_temps
		end

feature -- Methodes

	tourner_blocs(a_bloc_selection: BLOC)
		-- Échange les positions des 4 blocs dans la sélection dans le sens horaire)
		local
			l_bloc_1, l_bloc_2, l_bloc_3, l_bloc_4 : BLOC
			x_depart: INTEGER
			y_depart: INTEGER
		do
			x_depart := a_bloc_selection.x
			y_depart := a_bloc_selection.y

			-- Création des blocs temporaires pour stocker les informations
			create l_bloc_1.make_hasard (1, 1)
			l_bloc_1.couleur := liste_blocs.at(y_depart).at(x_depart).couleur
			l_bloc_1.type := liste_blocs.at(y_depart).at(x_depart).type

			create l_bloc_2.make_hasard (1, 1)
			l_bloc_2.couleur := liste_blocs.at(y_depart).at(x_depart + 1).couleur
			l_bloc_2.type := liste_blocs.at(y_depart).at(x_depart + 1).type

			create l_bloc_3.make_hasard (1, 1)
			l_bloc_3.couleur := liste_blocs.at(y_depart + 1).at(x_depart + 1).couleur
			l_bloc_3.type := liste_blocs.at(y_depart + 1).at(x_depart + 1).type

			create l_bloc_4.make_hasard (1, 1)
			l_bloc_4.couleur := liste_blocs.at(y_depart + 1).at(x_depart).couleur
			l_bloc_4.type := liste_blocs.at(y_depart + 1).at(x_depart).type


			-- Échange
			liste_blocs.at(y_depart).at(x_depart).couleur := l_bloc_4.couleur
			liste_blocs.at(y_depart).at(x_depart).type := l_bloc_4.type
			liste_blocs.at(y_depart).at(x_depart).selectionner_image

			liste_blocs.at(y_depart).at(x_depart + 1).couleur := l_bloc_1.couleur
			liste_blocs.at(y_depart).at(x_depart + 1).type := l_bloc_1.type
			liste_blocs.at(y_depart).at(x_depart + 1).selectionner_image

			liste_blocs.at(y_depart + 1).at(x_depart + 1).couleur := l_bloc_2.couleur
			liste_blocs.at(y_depart + 1).at(x_depart + 1).type := l_bloc_2.type
			liste_blocs.at(y_depart + 1).at(x_depart + 1).selectionner_image

			liste_blocs.at(y_depart + 1).at(x_depart).couleur := l_bloc_3.couleur
			liste_blocs.at(y_depart + 1).at(x_depart).type := l_bloc_3.type
			liste_blocs.at(y_depart + 1).at(x_depart).selectionner_image

		end




	verifier_combos
		-- Vérifie si un carré de 4 blocs de la même couleur a été formé
		local
			i: INTEGER -- Compteur de chaque ligne
			j: INTEGER -- Compter de chaque bloc d'une ligne
			position: INTEGER
			l_liste_blocs: LIST[LIST[BLOC]]
			l_blocs_a_detruire: LIST[BLOC]
		do
			l_liste_blocs := liste_blocs

			from
			i := 1
			until
				i >= l_liste_blocs.count
			loop

				-- Vérifie tous les blocs de la ligne en cours
				from
					j := 1
				until
					j >= l_liste_blocs.count
				loop

					if (verifier_blocs_autour(l_liste_blocs.at (i).at (j))) then
						create {ARRAYED_LIST[BLOC]} l_blocs_a_detruire.make (4)
						l_blocs_a_detruire.extend (l_liste_blocs.at (i).at (j))
						l_blocs_a_detruire.extend (l_liste_blocs.at (i+1).at (j))
						l_blocs_a_detruire.extend (l_liste_blocs.at (i).at (j+1))
						l_blocs_a_detruire.extend (l_liste_blocs.at (i+1).at (j+1))
						detruire_blocs(l_blocs_a_detruire)
					end

					j := j+1
				end

				i := i+1

			end

		end


	verifier_blocs_autour(a_bloc: BLOC) : BOOLEAN
		-- Vérifie les 3 blocs autour du bloc envoyé afin de voir s'ils sont de la même couleur
		local
			l_compteur: INTEGER
			l_bloc_comparaison: BLOC
			l_bloc_haut: BLOC
			l_bloc_bas: BLOC
			l_bloc_gauche_bas: BLOC
		do
			--
			if attached {TYPE_ARC_EN_CIEL} a_bloc.type then
				l_bloc_comparaison := liste_blocs.at (a_bloc.y).at (a_bloc.x +1)
				l_bloc_haut := liste_blocs.at (a_bloc.y).at (a_bloc.x )
			else
				l_bloc_comparaison := liste_blocs.at (a_bloc.y).at (a_bloc.x)
				l_bloc_haut := liste_blocs.at (a_bloc.y).at (a_bloc.x + 1)

			end

			l_bloc_bas := liste_blocs.at (a_bloc.y + 1).at (a_bloc.x)
			l_bloc_gauche_bas := liste_blocs.at (a_bloc.y + 1).at (a_bloc.x +1)

			if attached {TYPE_ARC_EN_CIEL} l_bloc_haut.type or l_bloc_haut.couleur = l_bloc_comparaison.couleur then
				l_compteur := l_compteur + 1
			end

			if attached {TYPE_ARC_EN_CIEL} l_bloc_bas.type or l_bloc_bas.couleur = l_bloc_comparaison.couleur then
				l_compteur := l_compteur + 1
			end

			if attached {TYPE_ARC_EN_CIEL} l_bloc_gauche_bas.type or l_bloc_gauche_bas.couleur = l_bloc_comparaison.couleur then
				l_compteur := l_compteur + 1
			end

			if l_compteur >= 3 then
				Result := true
			else
				Result := false
			end

		end


	detruire_blocs(a_blocs_a_detruire: LIST[BLOC])
		-- Détruit les blocs qui ont formé un carré, ajoute les points correspondants et génère de nouveaux blocs
		local
			l_nb_blocs_detruits: INTEGER
			l_nb_bonus_temps: INTEGER
		do
			l_nb_blocs_detruits := a_blocs_a_detruire.count
			l_nb_bonus_temps := 0


			across
				a_blocs_a_detruire
			as
				la_blocs_a_detruire
			loop
				-- Vérifie si le bloc à détruire a un type spécial
				if attached {TYPE_DOUBLE_POINTS} liste_blocs.at (la_blocs_a_detruire.item.y).at (la_blocs_a_detruire.item.x).type then
					l_nb_blocs_detruits := l_nb_blocs_detruits * 2

				elseif attached {TYPE_TEMPS_BONUS} liste_blocs.at (la_blocs_a_detruire.item.y).at (la_blocs_a_detruire.item.x).type then
					l_nb_bonus_temps := l_nb_bonus_temps + 1

				end

				-- Remplacement du bloc dans la liste par un nouveau bloc généré au hasard
				liste_blocs.at (la_blocs_a_detruire.item.y).at (la_blocs_a_detruire.item.x) := create {BLOC}.make_hasard (la_blocs_a_detruire.item.x, la_blocs_a_detruire.item.y)

			end

			-- Calcul des points à ajouter
			nb_blocs_detruits := nb_blocs_detruits + l_nb_blocs_detruits
			nb_bonus_temps := nb_bonus_temps + l_nb_bonus_temps


			-- Son
			sons_factory.jouer_son (sons_factory.son_detruire)

			-- Relance la vérification au cas où d'autres combos se sont formés suite à la destruction
			verifier_combos

		end


	reset_nb_blocs_detruits
		-- Remet à zéro le nombre de blocs détruits (lorsque les points correspondants ont été ajoutés)
		do
			nb_blocs_detruits := 0
		ensure
			nb_blocs_detruits_reinitialise: nb_blocs_detruits = 0
		end

	reset_nb_bonus_temps
		-- Remet à zéro le nombre de bonus de temps à ajouter (lorsque la durée de la partie a été ajustée)
		do
			nb_bonus_temps := 0
		ensure
			nb_bonus_temps_reinitialise: nb_bonus_temps = 0
		end

invariant
	liste_blocs_initialise: liste_blocs /= Void
	nb_blocs_detruits_initialise: nb_blocs_detruits /= Void
	nb_bonus_temps_initialise: nb_bonus_temps /= Void


end
