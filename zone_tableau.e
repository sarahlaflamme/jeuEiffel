note
	description: "Affichage du tableau en cours"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	ZONE_TABLEAU

inherit
	ZONE

create
	make

feature {NONE} -- Initialization

	make(a_tableau_associe: TABLEAU)
			-- Constructeur de `Current'.
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			set_tableau_associe(a_tableau_associe)
			set_depart_x(60)
			set_depart_y(80)
			set_dimension_fond_tableau(calculer_dimension_fond_tableau)

			create fond_tableau.make (dimension_fond_tableau, dimension_fond_tableau)
			fond_tableau.fill_rect (create {GAME_COLOR}.make_rgb(255, 255, 255), 0, 0, 415, 415)
			controleur.screen_surface.draw_surface (fond_tableau, depart_x, depart_y)

			dessiner(a_tableau_associe)

		end

feature -- Attributs

	tableau_associe: TABLEAU assign set_tableau_associe
		-- Tableau à afficher dans la zone

	fond_tableau:GAME_SURFACE
		-- Rectangle représentant le fond du tableau

	dimension_fond_tableau: INTEGER
		-- Largeur et hauteur du fond du tableau


feature -- Setters

	set_tableau_associe(a_tableau_associe: TABLEAU)
		-- Assigne le tableau à afficher dans la zone

		do
			tableau_associe := a_tableau_associe
		end

	set_dimension_fond_tableau(a_dimension_fond_tableau: INTEGER)
		-- Assigne la dimension du fond du tableau

		do
			dimension_fond_tableau := a_dimension_fond_tableau
		end


feature -- Méthodes

	calculer_dimension_fond_tableau: INTEGER
		-- Retourne la dimension que le fond du tableau doit avoir en fonction du nombre de blocs
		-- Nombre de blocs * largeur des blocs + 2*10 pixels de chaque côté + ((Nombre de blocs -1) * 5 pixels entre les blocs)
		do
			Result := (regles_partie.taille_tableau * images_factory.image_bloc_arc_en_ciel.width)
						+ (2 * 10) + ((regles_partie.taille_tableau - 1) * 5)

		end


	dessiner(a_tableau: TABLEAU)
		-- Dessine toute la zone
		do
			tableau_associe := a_tableau
			controleur.screen_surface.draw_surface (fond_tableau, depart_x, depart_y)
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
				tableau_associe.liste_blocs
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


end
