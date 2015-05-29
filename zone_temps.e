note
	description: "Affichage du temps restant à la partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	ZONE_TEMPS

inherit
	ZONE

	redefine
		dessiner
	end

create
	make

feature {NONE} -- Initialisation

	make(a_temps_restant: INTEGER)
			-- Constructeur de `Current'.
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			depart_x := 620
			depart_y := 85
			create police_texte_temps.make ("estre.ttf", 50)
			create couleur_texte.make_rgb(255, 255, 255)

			image_sablier := images_factory.image_sablier
			image_sablier_depart_x := depart_x
			image_sablier_depart_y := depart_y

		end

feature -- Attributs

	temps_restant: INTEGER assign set_temps_restant
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
		require
			temps_restant_valide: a_temps_restant >= 0
		do
			temps_restant := a_temps_restant
		ensure
			temps_restant_set: temps_restant = a_temps_restant
		end

	set_image_sablier_depart_x(a_image_sablier_depart_x: INTEGER)
		-- Assigne une valeur à image_sablier_depart_x
		require
			image_sablier_depart_x_valide: a_image_sablier_depart_x >= 0
		do
			image_sablier_depart_x := a_image_sablier_depart_x
		ensure
			image_sablier_depart_x_set: image_sablier_depart_x = a_image_sablier_depart_x
		end

	set_image_sablier_depart_y(a_image_sablier_depart_y: INTEGER)
		-- Assigne une valeur à image_sablier_depart_y
		require
			image_sablier_depart_y_valide: a_image_sablier_depart_y >= 0
		do
			image_sablier_depart_y := a_image_sablier_depart_y
		ensure
			image_sablier_depart_y_set: image_sablier_depart_y = a_image_sablier_depart_y
		end


feature -- Méthodes

	dessiner
		-- Dessiner tous les éléments de la zone
		do
			create texte_temps.make_blended (temps_restant.out, police_texte_temps, couleur_texte)
			controleur.screen_surface.draw_surface (image_sablier, image_sablier_depart_x, image_sablier_depart_y)
			controleur.screen_surface.draw_surface (texte_temps, image_sablier_depart_x + image_sablier.width//2 - texte_temps.width//2, image_sablier_depart_y + 90)
		end



invariant
	temps_restant_initialise: temps_restant /= Void
	image_sablier_initialise: image_sablier /= Void
	image_sablier_depart_x_initialise: image_sablier_depart_x /= Void
	image_sablier_depart_y_initialise: image_sablier_depart_y /= Void
	police_texte_temps_initialise: police_texte_temps /= Void
	couleur_texte_initialise: couleur_texte /= Void

end
