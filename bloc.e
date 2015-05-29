note
	description: "Summary description for {BLOC}."
	author: "Sarah Laflamme"
	date: "$Date$"

class
	BLOC

inherit
	REGLES_PARTIE_SHARED
	IMAGES_FACTORY_SHARED
	CONTROLEURS_FACTORY_SHARED

create
	make_hasard

feature {NONE} -- Initialization

	make_hasard(a_x, a_y:INTEGER)
			-- Crée un bloc en choisissant une couleur et un type au hasard
		require
			x_valide: a_x >= 1 and a_x <= regles_partie.taille_tableau
			y_valide: a_y >= 1 and a_y <= regles_partie.taille_tableau
		local
			l_nb_couleurs: INTEGER
			l_nb_types: INTEGER
			l_chiffre_couleur:INTEGER
			l_chiffre_type:INTEGER
		do
			x := a_x
			y := a_y

			-- Générer un nombre au hasard pour chiffre_couleur (entre 1 et 5)
			l_nb_couleurs := regles_partie.liste_couleurs.count
			controleurs_factory.controleur.generate_new_random
			l_chiffre_couleur := controleurs_factory.controleur.last_random_integer_between (1, l_nb_couleurs)

			-- Générer un nombre au hasard pour chiffre_type (entre 1 et 20)
			l_nb_types := regles_partie.liste_types_probabilites.count
			controleurs_factory.controleur.generate_new_random
			l_chiffre_type := controleurs_factory.controleur.last_random_integer_between (1, l_nb_types)

			couleur := regles_partie.liste_couleurs[l_chiffre_couleur]
			type := regles_partie.liste_types_probabilites[l_chiffre_type]
			selectionner_image


		end


feature -- Attributs

	x:INTEGER assign set_x
			-- Position horizontale du bloc dans le tableau

	y:INTEGER assign set_y
			-- Position verticale du bloc dans le tableau

	couleur:COULEUR assign set_couleur
			-- Couleur du bloc

	type:TYPE_BLOC assign set_type
			-- Type du bloc

	image: GAME_SURFACE assign set_image
			-- L'image représentant le bloc

	image_depart_x: INTEGER assign set_image_depart_x
			-- Position horizontale de l'image dans la fenêtre

	image_depart_y: INTEGER assign set_image_depart_y
			-- Position verticale de l'image dans la fenêtre



feature -- Setters

	set_x(a_x: INTEGER)
		-- Assigne une valeur à x
		require
			x_valide: a_x >= 1 and a_x <= regles_partie.taille_tableau
		do
			x := a_x
		ensure
			x_set: x = a_x
		end

	set_y(a_y: INTEGER)
		-- Assigne une valeur à y
		require
			y_valide: a_y >= 1 and a_y <= regles_partie.taille_tableau
		do
			y := a_y
		ensure
			y_set: y = a_y
		end

	set_couleur(a_couleur: COULEUR)
		-- Assigne la couleur au bloc
		require
			couleur_valide: regles_partie.liste_couleurs.has (a_couleur)
		do
			couleur := a_couleur
		ensure
			couleur_set: couleur = a_couleur
		end

	set_type(a_type: TYPE_BLOC)
		-- Assigne le type au bloc
		do
			type := a_type
		ensure
			type_set: type = a_type
		end

	set_image(a_image: GAME_SURFACE)
		-- Assigne l'image au bloc
		require
			image_valide: a_image /= Void
		do
			image := a_image
		ensure
			image_set: image = a_image
		end

	set_image_depart_x(a_image_depart_x: INTEGER)
		-- Assigne la position horizontale de départ de l'image
		require
			image_depart_x_valide: a_image_depart_x >= 0
		do
			image_depart_x := a_image_depart_x
		ensure
			image_depart_x_set: image_depart_x = a_image_depart_x
		end

	set_image_depart_y(a_image_depart_y: INTEGER)
		-- Assigne la position verticale de départ de l'image
		require
			image_depart_y_valide: a_image_depart_y >= 0
		do
			image_depart_y := a_image_depart_y
		ensure
			image_depart_y_set: image_depart_y = a_image_depart_y
		end




feature -- Methodes

	selectionner_image
		-- Assigne l'image au bloc selon son type et sa couleur
		do
			if attached {TYPE_ARC_EN_CIEL} type then

				set_image(images_factory.image_bloc_arc_en_ciel1)

			elseif attached {TYPE_NORMAL} type then

				if couleur = regles_partie.liste_couleurs.at (1) then
					set_image(images_factory.image_bloc_bleu_normal)

				elseif couleur = regles_partie.liste_couleurs.at (2) then
					set_image(images_factory.image_bloc_jaune_normal)

				elseif couleur = regles_partie.liste_couleurs.at (3) then
					set_image(images_factory.image_bloc_rose_normal)

				elseif couleur = regles_partie.liste_couleurs.at (4) then
					set_image(images_factory.image_bloc_orange_normal)

				elseif couleur = regles_partie.liste_couleurs.at (5) then
					set_image(images_factory.image_bloc_mauve_normal)

				else
					check
						False
					end
				end

			elseif attached {TYPE_DOUBLE_POINTS} type then

				if couleur = regles_partie.liste_couleurs.at (1) then
					set_image(images_factory.image_bloc_bleu_double_points)

				elseif couleur = regles_partie.liste_couleurs.at (2) then
					set_image(images_factory.image_bloc_jaune_double_points)

				elseif couleur = regles_partie.liste_couleurs.at (3) then
					set_image(images_factory.image_bloc_rose_double_points)

				elseif couleur = regles_partie.liste_couleurs.at (4) then
					set_image(images_factory.image_bloc_orange_double_points)

				elseif couleur = regles_partie.liste_couleurs.at (5) then
					set_image(images_factory.image_bloc_mauve_double_points)

				else
					check
						False
					end
				end


			elseif attached {TYPE_TEMPS_BONUS} type then

				if couleur = regles_partie.liste_couleurs.at (1) then
					set_image(images_factory.image_bloc_bleu_temps_bonus)

				elseif couleur = regles_partie.liste_couleurs.at (2) then
					set_image(images_factory.image_bloc_jaune_temps_bonus)

				elseif couleur = regles_partie.liste_couleurs.at (3) then
					set_image(images_factory.image_bloc_rose_temps_bonus)

				elseif couleur = regles_partie.liste_couleurs.at (4) then
					set_image(images_factory.image_bloc_orange_temps_bonus)

				elseif couleur = regles_partie.liste_couleurs.at (5) then
					set_image(images_factory.image_bloc_mauve_temps_bonus)

				else
					check
						False
					end
				end

			else
				check
					False
				end
			end

		end


	invariant
		x_valide: x >= 1 and x <= regles_partie.taille_tableau
		y_valide: y >= 1 and y <= regles_partie.taille_tableau
		x_initialise: x /= Void
		y_initialise: y /= Void
		couleur_initialise: couleur /= Void
		type_initialise: type /= Void
		image_initialise: image /= Void
		image_depart_x_initialise: image_depart_x /= Void
		image_depart_y_initialise: image_depart_y /= Void

end
