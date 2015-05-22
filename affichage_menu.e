note
	description: "Affichage du menu principal du jeu"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	AFFICHAGE_MENU

inherit
	AFFICHAGE

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		local
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte


			-- Création du background (couleur)
			create couleur_fond.make_rgb(43, 24, 24)
			controleur.screen_surface.fill_rect (couleur_fond, 0, 0, controleur.screen_surface.width, controleur.screen_surface.height)


			-- Affichage des images et boutons
			image_menu := images_factory.image_menu
			set_image_menu_depart_x(controleur.screen_surface.width//2 - image_menu.width//2)
			set_image_menu_depart_y(50)
			controleur.screen_surface.draw_surface (image_menu, image_menu_depart_x, image_menu_depart_y)

			create bouton_jouer.make (images_factory.image_bouton_jouer, images_factory.image_bouton_jouer_hover,
								controleur.screen_surface.width//2 - images_factory.image_bouton_jouer.width//2, 250)
			controleur.screen_surface.draw_surface (bouton_jouer.image, bouton_jouer.depart_x, bouton_jouer.depart_y)

			create bouton_instructions.make(images_factory.image_bouton_instructions, images_factory.image_bouton_instructions_hover,
								controleur.screen_surface.width//2 - images_factory.image_bouton_instructions.width//2, 375)
			controleur.screen_surface.draw_surface (bouton_instructions.image, bouton_instructions.depart_x, bouton_instructions.depart_y)

			create bouton_a_propos.make (images_factory.image_bouton_a_propos, images_factory.image_bouton_a_propos_hover,
										(controleur.screen_surface.width//2 - images_factory.image_bouton_a_propos.width//2), 400)
			controleur.screen_surface.draw_surface (bouton_a_propos.image, bouton_a_propos.depart_x, bouton_a_propos.depart_y)


			-- Affichage de l'écran dans la fenêtre
			controleur.flip_screen

			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

			sons_factory.jouer_musique (sons_factory.musique_menu)


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

	bouton_a_propos:BOUTON
		-- Bouton affichant les informations sur l'application

	couleur_fond: GAME_COLOR
		-- Couleur du fond de la fenêtre


feature -- Setters

	set_image_menu_depart_x(a_image_menu_depart_x: INTEGER)
		-- Assigne une valeur à image_menu_depart_x
		do
			image_menu_depart_x := a_image_menu_depart_x
		end

	set_image_menu_depart_y(a_image_menu_depart_y: INTEGER)
		-- Assigne une valeur à image_menu_depart_y
		do
			image_menu_depart_y := a_image_menu_depart_y
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
				bouton_a_propos.is_hover := false

			elseif (x > bouton_instructions.depart_x and x < (bouton_instructions.depart_x + bouton_instructions.image.width) and
				y > bouton_instructions.depart_y and y < (bouton_instructions.depart_y + bouton_instructions.image.height)) then
				bouton_jouer.is_hover := false
				bouton_instructions.is_hover := true
				bouton_a_propos.is_hover := false

			elseif (x > bouton_a_propos.depart_x and x < (bouton_a_propos.depart_x + bouton_a_propos.image.width) and
				y > bouton_a_propos.depart_y and y < (bouton_a_propos.depart_y + bouton_a_propos.image.height)) then
				bouton_jouer.is_hover := false
				bouton_instructions.is_hover := false
				bouton_a_propos.is_hover := true

			else
				bouton_jouer.is_hover := false
				bouton_instructions.is_hover := false
				bouton_a_propos.is_hover := false

			end

		end


	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		local
			controleur_partie: CONTROLEUR_PARTIE
		do
			if is_left_button then

				if (x > bouton_jouer.depart_x and x < (bouton_jouer.depart_x + bouton_jouer.image.width) and
				y > bouton_jouer.depart_y and y < (bouton_jouer.depart_y + bouton_jouer.image.height)) then
					-- indiquer que l'écran qui doit être affiché est l'écran de jeu
					create controleur_partie.make


				elseif (x > bouton_instructions.depart_x and x < (bouton_instructions.depart_x + bouton_instructions.image.width) and
				y > bouton_instructions.depart_y and y < (bouton_instructions.depart_y + bouton_instructions.image.height)) then
					-- créer l'écran_instructions

				elseif (x > bouton_a_propos.depart_x and x < (bouton_a_propos.depart_x + bouton_a_propos.image.width) and
				y > bouton_a_propos.depart_y and y < (bouton_a_propos.depart_y + bouton_a_propos.image.height)) then
					-- créer l'écran_a_propos

				end

			end

		end


	on_iteration
		-- Rafraichit l'image à chaque itération
		do
			if bouton_jouer.is_hover then
				controleur.screen_surface.draw_surface (bouton_jouer.image_hover, bouton_jouer.depart_x, bouton_jouer.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_jouer.image, bouton_jouer.depart_x, bouton_jouer.depart_y)

			end
			controleur.flip_screen
		end


	on_quit
			-- Méthode lancée lorsque la fenêtre est fermée
		do
			controleur.stop
		end


feature -- Méthodes


end
