note
	description: "Affichage du temps restant à la partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	ZONE_TEMPS

inherit
	ZONE

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			create police_texte_temps.make ("estre.ttf", 50)
			create couleur_texte.make_rgb(255, 255, 255)


			set_temps_restant(500)

			image_sablier := images_factory.image_sablier
			set_image_sablier_depart_x(630)
			set_image_sablier_depart_y(85)
			controleur.screen_surface.draw_surface (image_sablier, image_sablier_depart_x, image_sablier_depart_y)


			create texte_temps.make_blended (temps_restant.out, police_texte_temps, couleur_texte)
			controleur.screen_surface.draw_surface (texte_temps, image_sablier_depart_x, image_sablier_depart_y + 90)

		end

feature -- Attributs

	temps_restant: INTEGER
		-- Temps à afficher dans la zone

	image_sablier:GAME_SURFACE
		-- Image de sablier
	image_sablier_depart_x: INTEGER assign set_image_sablier_depart_x
		-- Position de départ horizontale de l'image du sablier
	image_sablier_depart_y: INTEGER assign set_image_sablier_depart_y
		-- Position de départ verticale de l'image du sablier

	police_texte_temps: GAME_FONT
		-- Police du texte représentant le temps restant

	couleur_texte: GAME_COLOR
		-- Couleur du texte

	texte_temps: GAME_SURFACE_TEXT
		-- Texte qui affiche le temps restant

feature -- Setters

	set_temps_restant(a_temps_restant: INTEGER)
		-- Assigne le temps à afficher

		do
			temps_restant := a_temps_restant
		end

	set_image_sablier_depart_x(a_image_sablier_depart_x: INTEGER)
		-- Assigne une valeur à image_sablier_depart_x
		do
			image_sablier_depart_x := a_image_sablier_depart_x
		end

	set_image_sablier_depart_y(a_image_sablier_depart_y: INTEGER)
		-- Assigne une valeur à image_sablier_depart_y
		do
			image_sablier_depart_y := a_image_sablier_depart_y
		end


feature -- Méthodes

	dessiner
		-- Dessiner tous les éléments de la zone
		do
			controleur.screen_surface.draw_surface (image_sablier, image_sablier_depart_x, image_sablier_depart_y)
			controleur.screen_surface.draw_surface (texte_temps, image_sablier_depart_x, image_sablier_depart_y + 90)
		end

end
