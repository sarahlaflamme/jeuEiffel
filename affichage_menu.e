note
	description: "Affichage du menu principal du jeu"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	AFFICHAGE_MENU

inherit
	AFFICHAGE

	redefine
		dessiner,
		lancer_musique
	end

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

			en_cours := false
			partie_lancee := false
			instructions_lancees := false

			-- Création du background (couleur)
			create couleur_fond.make_rgb(43, 24, 24)
			create couleur_texte.make_rgb(255, 255, 255)

			create trait.make (215, 2)
			trait.fill_rect (couleur_texte, 0, 0, trait.width, trait.height)

			-- Création des images et boutons
			image_menu := images_factory.image_menu
			image_menu_depart_x := controleur.screen_surface.width//2 - image_menu.width//2
			image_menu_depart_y := 50


			create bouton_jouer.make (images_factory.image_bouton_jouer, images_factory.image_bouton_jouer_hover,
								controleur.screen_surface.width//2 - images_factory.image_bouton_jouer.width//2, 250)

			create bouton_instructions.make(images_factory.image_bouton_instructions, images_factory.image_bouton_instructions_hover,
								controleur.screen_surface.width//2 - images_factory.image_bouton_instructions.width//2, 330)

			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

			lancer_musique

		end


feature -- Attributs

	image_menu:GAME_SURFACE
		-- Image du menu

	image_menu_depart_x: INTEGER
		-- Position de départ horizontale de l'image du menu

	image_menu_depart_y: INTEGER
		-- Position de départ verticale de l'image du menu

	bouton_jouer:BOUTON
		-- Bouton permettant de lancer une nouvelle partie

	bouton_instructions:BOUTON
		-- Bouton permettant d'afficher les instructions du jeu

	couleur_fond: GAME_COLOR
		-- Couleur du fond de la fenêtre

	couleur_texte: GAME_COLOR
		-- Couleur du texte

	trait: GAME_SURFACE
		-- Trait qui sépare les boutons

	partie_lancee: BOOLEAN
		-- Indique qu'une nouvelle partie a été lancée

	instructions_lancees: BOOLEAN
		-- Indique que les instructions doivent être affichées


feature -- Setters

	set_image_menu_depart_x(a_image_menu_depart_x: INTEGER)
		-- Assigne une valeur à image_menu_depart_x
		require
			image_menu_depart_x_valide: a_image_menu_depart_x >= 0
		do
			image_menu_depart_x := a_image_menu_depart_x
		ensure
			image_menu_depart_x_set: image_menu_depart_x = a_image_menu_depart_x
		end

	set_image_menu_depart_y(a_image_menu_depart_y: INTEGER)
		-- Assigne une valeur à image_menu_depart_y
		require
			image_menu_depart_y_valide: a_image_menu_depart_y >= 0
		do
			image_menu_depart_y := a_image_menu_depart_y
		ensure
			image_menu_depart_y_set: image_menu_depart_y = a_image_menu_depart_y
		end

	set_partie_lancee(a_partie_lancee: BOOLEAN)
		-- Assigne la valeur à partie_lancee
		do
			partie_lancee := a_partie_lancee
		ensure
			partie_lancee_set: partie_lancee = a_partie_lancee
		end

	set_instructions_lancees(a_instructions_lancees: BOOLEAN)
		-- Assigne la valeur à instructions_lancees
		do
			instructions_lancees := a_instructions_lancees
		ensure
			instructions_lancees_set: instructions_lancees = a_instructions_lancees
		end



feature -- Événements

	on_mouse_move(x,y:NATURAL_16)
			-- Méthode appelée lorsque la souris bouge dans la fenêtre
		local

		do

			if (x > bouton_jouer.depart_x and x < (bouton_jouer.depart_x + bouton_jouer.image.width) and
				y > bouton_jouer.depart_y and y < (bouton_jouer.depart_y + bouton_jouer.image.height)) then
				bouton_jouer.is_hover := true
				bouton_instructions.is_hover := false

			elseif (x > bouton_instructions.depart_x and x < (bouton_instructions.depart_x + bouton_instructions.image.width) and
				y > bouton_instructions.depart_y and y < (bouton_instructions.depart_y + bouton_instructions.image.height)) then
				bouton_jouer.is_hover := false
				bouton_instructions.is_hover := true

			else
				bouton_jouer.is_hover :=false
				bouton_instructions.is_hover := false

			end

		end


	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		local
			l_affichage_partie: AFFICHAGE_PARTIE
			l_affichage_instructions: AFFICHAGE_INSTRUCTIONS
		do
			if is_left_button then

				if (x > bouton_jouer.depart_x and x < (bouton_jouer.depart_x + bouton_jouer.image.width) and
				y > bouton_jouer.depart_y and y < (bouton_jouer.depart_y + bouton_jouer.image.height)) then
					partie_lancee := true
					en_cours := false
					create l_affichage_partie.make (create {PARTIE}.make)
					l_affichage_partie.en_cours := true

				elseif (x > bouton_instructions.depart_x and x < (bouton_instructions.depart_x + bouton_instructions.image.width) and
				y > bouton_instructions.depart_y and y < (bouton_instructions.depart_y + bouton_instructions.image.height)) then
					instructions_lancees := true
					en_cours := false
					create l_affichage_instructions.make
					l_affichage_instructions.en_cours := true

				end
			end
		end


	on_iteration
		-- Rafraichit l'image à chaque itération
		do
			if en_cours then

				dessiner

			end
		end


	on_quit
			-- Méthode lancée lorsque la fenêtre est fermée
		do
			controleur.stop
		end


feature -- Méthodes

	dessiner
		-- <Precursor>
		do

			controleur.screen_surface.fill_rect (couleur_fond, 0, 0, controleur.screen_surface.width, controleur.screen_surface.height)
			controleur.screen_surface.draw_surface (image_menu, image_menu_depart_x, image_menu_depart_y)
			controleur.screen_surface.draw_surface (trait, controleur.screen_surface.width//2 - trait.width//2, 320)

			if bouton_jouer.is_hover then
				controleur.screen_surface.draw_surface (bouton_jouer.image_hover, bouton_jouer.depart_x, bouton_jouer.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_jouer.image, bouton_jouer.depart_x, bouton_jouer.depart_y)
			end

			if bouton_instructions.is_hover then
				controleur.screen_surface.draw_surface (bouton_instructions.image_hover, bouton_instructions.depart_x, bouton_instructions.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_instructions.image, bouton_instructions.depart_x, bouton_instructions.depart_y)
			end

			controleur.flip_screen

		end

	lancer_musique
		-- <Precursor>
		do
			sons_factory.jouer_musique (sons_factory.musique_menu)
		end


	invariant
		image_menu_initialise: image_menu /= Void
		image_menu_depart_x_initialise: image_menu_depart_x /= Void
		image_menu_depart_y_initialise: image_menu_depart_y /= Void
		bouton_jouer_initialise: bouton_jouer /= Void
		bouton_instructions_initialise: bouton_instructions /= Void
		couleur_fond_initialise: couleur_fond /= Void
		couleur_texte_initialise: couleur_texte /= Void
		trait_initialise: trait /= Void
		partie_lancee_initialise: partie_lancee /= Void
		instructions_lancees_initialise: instructions_lancees /= Void

end
