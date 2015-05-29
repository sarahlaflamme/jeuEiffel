note
	description: "Affichage du tableau en cours"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	ZONE_TABLEAU

inherit
	ZONE

	redefine
		dessiner
	end

create
	make

feature {NONE} -- Initialization

	make(a_tableau: TABLEAU)
			-- Constructeur de `Current'.
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			tableau := a_tableau
			depart_x := 60
			depart_y := 80
			dimension_fond_tableau := calculer_dimension_fond_tableau
			index_animation_bloc_arc_en_ciel := 1

			create fond_tableau.make (dimension_fond_tableau, dimension_fond_tableau)
			fond_tableau.fill_rect (create {GAME_COLOR}.make_rgb(255, 255, 255), 0, 0, 415, 415)

		end

feature -- Attributs

	tableau: TABLEAU assign set_tableau
		-- Tableau à afficher dans la zone

	fond_tableau:GAME_SURFACE
		-- Rectangle représentant le fond du tableau

	dimension_fond_tableau: INTEGER assign set_dimension_fond_tableau
		-- Largeur et hauteur du fond du tableau

	index_animation_bloc_arc_en_ciel: INTEGER assign set_index_animation_bloc_arc_en_ciel
		-- Nombe représentant la position à afficher dans l'animation


feature -- Setters

	set_tableau(a_tableau: TABLEAU)
		-- Assigne le tableau à afficher dans la zone
		do
			tableau := a_tableau
		ensure
			tableau_set: tableau = a_tableau
		end

	set_dimension_fond_tableau(a_dimension_fond_tableau: INTEGER)
		-- Assigne la dimension du fond du tableau
		require
			dimension_fond_tableau_valide: a_dimension_fond_tableau >= 0
		do
			dimension_fond_tableau := a_dimension_fond_tableau
		ensure
			dimension_fond_tableau_set: dimension_fond_tableau = a_dimension_fond_tableau
		end

	set_index_animation_bloc_arc_en_ciel(a_index_animation_bloc_arc_en_ciel: INTEGER)
		-- Assigne l'index de l'animation des blocs arc-en-ciel
		require
			index_animation_bloc_arc_en_ciel_valide: a_index_animation_bloc_arc_en_ciel > 0
			and a_index_animation_bloc_arc_en_ciel <= images_factory.liste_images_bloc_arc_en_ciel.count
		do
			index_animation_bloc_arc_en_ciel := a_index_animation_bloc_arc_en_ciel
		ensure
			index_animation_bloc_arc_en_ciel_set: index_animation_bloc_arc_en_ciel = a_index_animation_bloc_arc_en_ciel
		end


feature -- Méthodes

	calculer_dimension_fond_tableau: INTEGER
		-- Retourne la dimension que le fond du tableau doit avoir en fonction du nombre de blocs
		-- Nombre de blocs * largeur des blocs + 2*10 pixels de chaque côté + ((Nombre de blocs -1) * 5 pixels entre les blocs)
		do
			Result := (regles_partie.taille_tableau * images_factory.image_bloc_arc_en_ciel1.width)
						+ (2 * 10) + ((regles_partie.taille_tableau - 1) * 5)
		end


	dessiner
		-- <Precursor>
		do
			controleur.screen_surface.draw_surface (fond_tableau, depart_x, depart_y)
			animation_blocs_arc_en_ciel
			afficher_blocs
		end

	afficher_blocs
		-- Affiche les images de tous les blocs contenus dans le tableau
		local

			x: INTEGER
			y: INTEGER

		do
			x := depart_x + 10
			y := depart_y + 10

			across
				tableau.liste_blocs
			as
				la_liste_blocs
			loop
				across
					la_liste_blocs.item
				as
					ligne
				loop
					controleur.screen_surface.draw_surface (ligne.item.image, x, y)
					ligne.item.image_depart_x := x
					ligne.item.image_depart_y := y
					x := x + ligne.item.image.width + 5

				end
				x := depart_x + 10
				y := y + (la_liste_blocs.item.at(1).image.width + 5)

			end


		end

	animation_blocs_arc_en_ciel
		-- Assigne l'image correspondante à l'animation pour tous les blocs
		do
			across
				tableau.liste_blocs
			as
				la_liste_blocs
			loop
				across
					la_liste_blocs.item
				as
					ligne
				loop
					if attached {TYPE_ARC_EN_CIEL} ligne.item.type then
						ligne.item.image := images_factory.liste_images_bloc_arc_en_ciel.at (index_animation_bloc_arc_en_ciel)

					end

				end

			end

		end

invariant
	tableau_initialise: tableau /= Void
	fond_tableau_initialise: fond_tableau /= Void
	fond_tableau_initialise: fond_tableau /= Void
	index_animation_bloc_arc_en_ciel_initialise: index_animation_bloc_arc_en_ciel /= Void

end
