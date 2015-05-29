note
	description: "Summary description for {AFFICHAGE_INSTRUCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AFFICHAGE_INSTRUCTIONS

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
		local

		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			set_en_cours(false)

			create couleur_fond.make_rgb(255, 255, 255)
			create couleur_texte.make_rgb(43, 24, 24)
			create police_titre.make ("estre.ttf", 45)
			create police_instructions.make ("estre.ttf", 21)

			set_fond_depart_x(controleur.screen_surface.width//2 - 600//2)
			set_fond_depart_y(50)
			create fond.make (600, 400)
			fond.fill_rect (couleur_fond, 0, 0, fond.width, fond.height)
			create trait.make (400, 2)
			trait.fill_rect (couleur_texte, 0, 0, trait.width, trait.height)
			create bouton_commencer_partie.make (images_factory.image_bouton_commencer_partie, images_factory.image_bouton_commencer_partie_hover,
													controleur.screen_surface.width//2 - images_factory.image_bouton_commencer_partie.width//2, 490)
			create titre.make_blended ("Instructions", police_titre, couleur_texte)
			create description_jeu.make_blended ("Éliminez les blocs en formant des carrés (2x2) de la même couleur", police_instructions, couleur_texte)
			create description_bloc_arc_en_ciel.make_blended ("Remplace un bloc de n'importe quelle couleur", police_instructions, couleur_texte)
			create description_bloc_temps_bonus.make_blended ("Ajoute du temps à la partie", police_instructions, couleur_texte)
			create description_bloc_double_points.make_blended ("Multiplie les points du combo par 2", police_instructions, couleur_texte)


			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

			lancer_musique

		end




feature -- Attributs

	fond: GAME_SURFACE
		-- Rectangle sur lequel les informations se trouvent

	fond_depart_x: INTEGER assign set_fond_depart_x
		-- Position horizontale dans la fenêtre à laquelle le rectangle commence

	fond_depart_y: INTEGER assign set_fond_depart_y
		-- Position verticale dans la fenêtre à laquelle le rectangle commence

	bouton_commencer_partie:BOUTON
		-- Bouton permettant de lancer une partie

	police_titre: GAME_FONT
		-- Police du texte représentant le titre

	police_instructions: GAME_FONT
		-- Police du texte représentant les instructions

	couleur_texte: GAME_COLOR
		-- Couleur du texte

	couleur_fond: GAME_COLOR
		-- Couleur du fond de la zone

	titre: GAME_SURFACE_TEXT
		-- Texte affiché dans le haut de l'écran

	trait: GAME_SURFACE
		-- Trait qui sépare le titre des instructions

	description_jeu: GAME_SURFACE_TEXT
		-- Texte qui décrit le but du jeu

	description_bloc_arc_en_ciel: GAME_SURFACE_TEXT
		-- Texte qui décrit les blocs de type arc-en-ciel

	description_bloc_temps_bonus: GAME_SURFACE_TEXT
		-- Texte qui décrit les blocs de type Temps Bonus

	description_bloc_double_points: GAME_SURFACE_TEXT
		-- Texte qui décrit les blocs de type Temps Bonus





feature -- Setters

	set_fond_depart_x(a_fond_depart_x: INTEGER)
		-- Assigne la position x de départ du fond

		do
			fond_depart_x := a_fond_depart_x
		end

	set_fond_depart_y(a_fond_depart_y: INTEGER)
		-- Assigne la position y de départ du fond

		do
			fond_depart_y := a_fond_depart_y
		end



feature -- Événements

	on_mouse_move(x,y:NATURAL_16)
			-- Méthode appelée lorsque la souris bouge dans la fenêtre
		local

		do
			-- Vérifie si la souris se trouve à l'intérieur de la zone du tableau
			if (x > bouton_commencer_partie.depart_x) and (x < bouton_commencer_partie.depart_y + bouton_commencer_partie.image.width)and
				(y > bouton_commencer_partie.depart_y) and (y < bouton_commencer_partie.depart_y + bouton_commencer_partie.image.height) then

				bouton_commencer_partie.set_is_hover (true)

			else
				bouton_commencer_partie.set_is_hover (false)

			end

		end

	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		local
			l_affichage_partie: AFFICHAGE_PARTIE
		do
			if is_left_button then

				if (x > bouton_commencer_partie.depart_x) and (x < bouton_commencer_partie.depart_x + bouton_commencer_partie.image.width)
					and (y > bouton_commencer_partie.depart_y) and (y < bouton_commencer_partie.depart_y + bouton_commencer_partie.image.height) then

					set_en_cours(false)
					create l_affichage_partie.make (create {PARTIE}.make)
					l_affichage_partie.set_en_cours (true)

				end

			end

		end


	on_iteration
			-- Méthode lancée à chaque itération du jeu. (Redessine les différentes zones du jeu)
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
			controleur.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(43, 24, 24), 0, 0, controleur.screen_surface.width, controleur.screen_surface.height)

			controleur.screen_surface.draw_surface (fond, fond_depart_x, fond_depart_y)
			controleur.screen_surface.draw_surface (titre, controleur.screen_surface.width//2 - titre.width//2, 80)
			controleur.screen_surface.draw_surface (trait, controleur.screen_surface.width//2 - trait.width//2, 130)
			controleur.screen_surface.draw_surface (description_jeu, controleur.screen_surface.width//2 - description_jeu.width//2, 170)

			-- Blocs et texte
			controleur.screen_surface.draw_surface (images_factory.image_bloc_arc_en_ciel1, 190, 230)
			controleur.screen_surface.draw_surface (description_bloc_arc_en_ciel, 250, 240)

			controleur.screen_surface.draw_surface (images_factory.image_bloc_rose_temps_bonus, 190, 290)
			controleur.screen_surface.draw_surface (description_bloc_temps_bonus, 250, 300)

			controleur.screen_surface.draw_surface (images_factory.image_bloc_jaune_double_points, 190, 350)
			controleur.screen_surface.draw_surface (description_bloc_double_points, 250, 360)

			if bouton_commencer_partie.is_hover then
				controleur.screen_surface.draw_surface (bouton_commencer_partie.image_hover, bouton_commencer_partie.depart_x, bouton_commencer_partie.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_commencer_partie.image, bouton_commencer_partie.depart_x, bouton_commencer_partie.depart_y)
			end

			controleur.flip_screen
		end


	lancer_musique
		-- <Precursor>
		do
			sons_factory.jouer_musique (sons_factory.musique_menu)
		end

end
