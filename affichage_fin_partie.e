note
	description: "Affichage à la fin d'une partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	AFFICHAGE_FIN_PARTIE

inherit
	AFFICHAGE

	redefine
		dessiner
	end

create
	make

feature {NONE} -- Initialisation

	make(a_score: INTEGER)
			-- Constructeur de `Current'.
		local

		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			set_en_cours(false)
			set_score(a_score)
			create couleur_fond.make_rgb(255, 255, 255)
			create couleur_texte.make_rgb(43, 24, 24)
			create police_texte_titre.make ("estre.ttf", 55)
			create police_texte_score.make ("estre.ttf", 35)

			set_fond_depart_x(controleur.screen_surface.width//2 - 600//2)
			set_fond_depart_y(100)
			create fond.make (600, 400)
			fond.fill_rect (couleur_fond, 0, 0, fond.width, fond.height)
			create trait.make (400, 2)
			trait.fill_rect (couleur_texte, 0, 0, trait.width, trait.height)
			create bouton_enregistrer_score.make (images_factory.image_bouton_enregistrer_score, images_factory.image_bouton_enregistrer_score_hover,
													controleur.screen_surface.width//2 - images_factory.image_bouton_enregistrer_score.width//2, 330)
			create texte_titre.make_blended ("Partie terminée", police_texte_titre, couleur_texte)
			create texte_score.make_blended ("Votre score: " + score.out + " points", police_texte_score, couleur_texte)


			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

		end




feature -- Attributs

	score: INTEGER assign set_score
		-- Partie utilisée dans l'affichage

	fond: GAME_SURFACE
		-- Rectangle sur lequel les informations se trouvent

	fond_depart_x: INTEGER assign set_fond_depart_x
		-- Position horizontale dans la fenêtre à laquelle le rectangle commence

	fond_depart_y: INTEGER assign set_fond_depart_y
		-- Position verticale dans la fenêtre à laquelle le rectangle commence

	bouton_enregistrer_score:BOUTON
		-- Bouton permettant d'enregistrer le score sur le serveur

	police_texte_titre: GAME_FONT
		-- Police du texte représentant le titre

	police_texte_score: GAME_FONT
		-- Police du texte représentant le score

	couleur_texte: GAME_COLOR
		-- Couleur du texte

	couleur_fond: GAME_COLOR
		-- Couleur du fond de la zone

	texte_titre: GAME_SURFACE_TEXT
		-- Texte affiché au dessus du score

	texte_score: GAME_SURFACE_TEXT
		-- Texte qui affiche le score

	trait: GAME_SURFACE
		-- Trait qui sépare le titre du score



feature -- Setters

	set_score(a_score: INTEGER)
		-- Assigne une valeur à score
		do
			score := a_score
		end

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
			if (x > bouton_enregistrer_score.depart_x) and (x < bouton_enregistrer_score.depart_y + bouton_enregistrer_score.image.width)and
				(y > bouton_enregistrer_score.depart_y) and (y < bouton_enregistrer_score.depart_y + bouton_enregistrer_score.image.height) then

				bouton_enregistrer_score.set_is_hover (true)

			else
				bouton_enregistrer_score.set_is_hover (false)

			end

		end

	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		do
			if is_left_button then

				if (x > bouton_enregistrer_score.depart_x) and (x < bouton_enregistrer_score.depart_x + bouton_enregistrer_score.image.width)
					and (y > bouton_enregistrer_score.depart_y) and (y < bouton_enregistrer_score.depart_y + bouton_enregistrer_score.image.height) then

					-- envoyer score au serveur

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
			controleur.screen_surface.draw_surface (texte_titre, controleur.screen_surface.width//2 - texte_titre.width//2, 140)
			controleur.screen_surface.draw_surface (trait, controleur.screen_surface.width//2 - trait.width//2, 210)
			controleur.screen_surface.draw_surface (texte_score, controleur.screen_surface.width//2 - texte_score.width//2, 250)

			if bouton_enregistrer_score.is_hover then
				controleur.screen_surface.draw_surface (bouton_enregistrer_score.image_hover, bouton_enregistrer_score.depart_x, bouton_enregistrer_score.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_enregistrer_score.image, bouton_enregistrer_score.depart_x, bouton_enregistrer_score.depart_y)
			end

			controleur.flip_screen
		end


end
