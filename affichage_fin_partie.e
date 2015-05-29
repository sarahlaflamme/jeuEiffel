note
	description: "Affichage à la fin d'une partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	AFFICHAGE_FIN_PARTIE

inherit
	AFFICHAGE

	redefine
		dessiner,
		lancer_musique
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

			en_cours := false
			score := a_score
			score_enregistre := false
			create couleur_fond.make_rgb(255, 255, 255)
			create couleur_texte.make_rgb(43, 24, 24)
			create police_texte_titre.make ("estre.ttf", 55)
			create police_texte_score.make ("estre.ttf", 35)

			fond_depart_x := controleur.screen_surface.width//2 - 600//2
			fond_depart_y := 100
			create fond.make (600, 400)
			fond.fill_rect (couleur_fond, 0, 0, fond.width, fond.height)
			create trait.make (400, 2)
			trait.fill_rect (couleur_texte, 0, 0, trait.width, trait.height)
			create bouton_enregistrer_score.make (images_factory.image_bouton_enregistrer_score, images_factory.image_bouton_enregistrer_score_hover,
													controleur.screen_surface.width//2 - images_factory.image_bouton_enregistrer_score.width//2, 330)
			create bouton_quitter.make (images_factory.image_bouton_quitter, images_factory.image_bouton_quitter_hover,
													controleur.screen_surface.width//2 - images_factory.image_bouton_quitter.width//2, 420)
			create texte_titre.make_blended ("Partie terminée", police_texte_titre, couleur_texte)
			create texte_score.make_blended ("Votre score: " + score.out + " points", police_texte_score, couleur_texte)
			create texte_score_enregistre.make_blended ("Score enregistré", police_texte_score, couleur_texte)
			create texte_erreur_envoi_score.make_blended ("Erreur lors de l'envoi du score", police_texte_score, couleur_texte)


			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

			lancer_musique

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

	bouton_quitter:BOUTON
		-- Bouton permettant de quitter le jeu

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

	texte_score_enregistre: GAME_SURFACE_TEXT
		-- Texte indiquant que le score a été enregistré sur le serveur

	texte_erreur_envoi_score: GAME_SURFACE_TEXT
		-- Texte indiquant qu'il y a eu une erreur à l'envoi du score

	trait: GAME_SURFACE
		-- Trait qui sépare le titre du score

	score_enregistre: BOOLEAN
		-- Indique si le score a été enregistré ou non

	erreur_envoi_score: BOOLEAN
		-- Indique s'il y a eu une erreur lors de l'envoi du score




feature -- Setters

	set_score(a_score: INTEGER)
		-- Assigne une valeur à score
		require
			score_valid: a_score >= 0
		do
			score := a_score
		ensure
			score_set: score = a_score
		end

	set_fond_depart_x(a_fond_depart_x: INTEGER)
		-- Assigne la position x de départ du fond
		require
			fond_depart_x_valide: a_fond_depart_x >= 0
		do
			fond_depart_x := a_fond_depart_x
		ensure
			fond_depart_x_set: fond_depart_x = a_fond_depart_x
		end

	set_fond_depart_y(a_fond_depart_y: INTEGER)
		-- Assigne la position y de départ du fond
		require
			fond_depart_y_valide: a_fond_depart_y >= 0
		do
			fond_depart_y := a_fond_depart_y
		ensure
			fond_depart_y_set: fond_depart_y = a_fond_depart_y
		end

	set_score_enregistre(a_score_enregistre: BOOLEAN)
		-- Assigne la valeur à score_enregistre
		do
			score_enregistre := a_score_enregistre
		ensure
			score_enregistre_set: score_enregistre = a_score_enregistre
		end

	set_erreur_envoi_score(a_erreur_envoi_score: BOOLEAN)
		-- Assigne la valeur à erreur_envoi_score
		do
			erreur_envoi_score := a_erreur_envoi_score
		ensure
			erreur_envoi_score_valide: erreur_envoi_score = a_erreur_envoi_score
		end



feature -- Événements

	on_mouse_move(x,y:NATURAL_16)
			-- Méthode appelée lorsque la souris bouge dans la fenêtre
		local

		do
			-- Vérifie si la souris se trouve à l'intérieur de la zone du tableau
			if (x > bouton_enregistrer_score.depart_x and x < (bouton_enregistrer_score.depart_x + bouton_enregistrer_score.image.width) and
				y > bouton_enregistrer_score.depart_y and y < (bouton_enregistrer_score.depart_y + bouton_enregistrer_score.image.height)) then
				bouton_enregistrer_score.is_hover := true
				bouton_quitter.is_hover := false

			elseif (x > bouton_quitter.depart_x and x < (bouton_quitter.depart_x + bouton_quitter.image.width) and
				y > bouton_quitter.depart_y and y < (bouton_quitter.depart_y + bouton_quitter.image.height)) then
				bouton_enregistrer_score.is_hover := false
				bouton_quitter.is_hover := true

			else
				bouton_enregistrer_score.is_hover :=false
				bouton_quitter.is_hover := false

			end

		end

	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		do
			if is_left_button then

				if (x > bouton_enregistrer_score.depart_x) and (x < bouton_enregistrer_score.depart_x + bouton_enregistrer_score.image.width)
					and (y > bouton_enregistrer_score.depart_y) and (y < bouton_enregistrer_score.depart_y + bouton_enregistrer_score.image.height) then
					if not score_enregistre then

						envoyer_score_serveur

					end
				elseif (x > bouton_quitter.depart_x) and (x < bouton_quitter.depart_x + bouton_quitter.image.width)
					and (y > bouton_quitter.depart_y) and (y < bouton_quitter.depart_y + bouton_quitter.image.height) then

					controleur.stop

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
			if score_enregistre then
				controleur.screen_surface.draw_surface (texte_score_enregistre, controleur.screen_surface.width//2 - texte_score_enregistre.width//2, 250)
			elseif erreur_envoi_score then
				controleur.screen_surface.draw_surface (texte_erreur_envoi_score, controleur.screen_surface.width//2 - texte_erreur_envoi_score.width//2, 250)
			else
				controleur.screen_surface.draw_surface (texte_score, controleur.screen_surface.width//2 - texte_score.width//2, 250)
			end


			if bouton_enregistrer_score.is_hover or score_enregistre = true then
				controleur.screen_surface.draw_surface (bouton_enregistrer_score.image_hover, bouton_enregistrer_score.depart_x, bouton_enregistrer_score.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_enregistrer_score.image, bouton_enregistrer_score.depart_x, bouton_enregistrer_score.depart_y)
			end

			if bouton_quitter.is_hover then
				controleur.screen_surface.draw_surface (bouton_quitter.image_hover, bouton_quitter.depart_x, bouton_quitter.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_quitter.image, bouton_quitter.depart_x, bouton_quitter.depart_y)
			end

			controleur.flip_screen
		end

	lancer_musique
		-- <Precursor>
		do
			sons_factory.jouer_musique (sons_factory.musique_fin)
		end



	envoyer_score_serveur
		-- Envoie le score au serveur pour qu'il l'enregistrer
		local
			l_client: CLIENT_RESEAU
		do
			create l_client.make(score)
			if l_client.connection_reussie then
				score_enregistre := true
			else
				erreur_envoi_score := true
			end
		end



	invariant
		en_cours_initialise: en_cours /= Void
		score_initialise: score /= Void
		score_enregistre_initialise: score_enregistre /= Void
		couleur_fond_initialise: couleur_fond /= Void
		couleur_texte_initialise: couleur_texte /= Void
		police_texte_titre_initialise: police_texte_titre /= Void
		police_texte_score_initialise: police_texte_score /= Void
		fond_initialise: fond /= Void
		trait_initialise: trait /= Void
		bouton_enregistrer_score_initialise: bouton_enregistrer_score /= Void
		texte_titre_initialise: texte_titre /= Void
		texte_score_initialise: texte_score /= Void
		texte_score_enregistre_initialise: texte_score_enregistre /= Void
		texte_erreur_envoi_score_initialise: texte_erreur_envoi_score /= Void

end
