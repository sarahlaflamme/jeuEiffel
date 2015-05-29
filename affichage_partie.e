note
	description: "Affichage de la partie jouée dans une fenêtre"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	AFFICHAGE_PARTIE

inherit
	AFFICHAGE

	redefine
		dessiner,
		lancer_musique
	end

create
	make

feature {NONE} -- Initialisation

	make(a_partie: PARTIE)
			-- Constructeur de `Current'.
		local

		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			en_cours := false
			partie_terminee := false
			partie := a_partie
			create zone_tableau.make(partie.tableau)
			create zone_score.make(partie.score)
			create zone_temps.make(partie.temps_restant)
			create bouton_terminer.make (images_factory.image_bouton_terminer, images_factory.image_bouton_terminer_hover, 590, 440)

			-- Méthodes d'événements
			controleur.clear_event_controller
			controleur.event_controller.on_mouse_motion_position.extend(agent on_mouse_move)
			controleur.event_controller.on_mouse_button_down.extend (agent on_mouse_down)
			controleur.event_controller.on_iteration.extend (agent on_iteration)
			controleur.event_controller.on_quit_signal.extend (agent on_quit)

			lancer_musique

			partie.tableau.verifier_combos

		end




feature -- Attributs

	partie: PARTIE assign set_partie
		-- Partie utilisée dans l'affichage

	zone_tableau: ZONE_TABLEAU
		-- Zone représentant l'affichage du tableau de jeu

	zone_score: ZONE_SCORE
		-- Zone représentant l'affichage du score de la partie

	zone_temps: ZONE_TEMPS
		-- Zone représentant l'affichage du temps restant à la partie

	bouton_terminer:BOUTON
		-- Bouton permettant de terminer la partie

	compteur_iteration: INTEGER
		-- Compteur pour permettre de changer l'animation du bloc arc-en-ciel une fois sur X
		-- (par exemple 1 fois à chaque 20 itérations)

	partie_terminee: BOOLEAN assign set_partie_terminee
		-- Indique que la partie est terminée


feature -- Setters

	set_partie(a_partie: PARTIE)
		-- Assigne la partie à afficher
		require
			partie_valide: a_partie /= Void
		do
			partie := a_partie
		ensure
			partie_set: partie = a_partie
		end

	set_partie_terminee(a_partie_terminee: BOOLEAN)
		-- Assigne la valeur à partie_terminee
		do
			partie_terminee := a_partie_terminee
		ensure
			partie_terminee_set: partie = a_partie_terminee
		end


feature -- Événements

	on_mouse_move(x,y:NATURAL_16)
			-- Méthode appelée lorsque la souris bouge dans la fenêtre
		do
			-- Vérifie si la souris se trouve à l'intérieur de la zone du tableau
			if (x > zone_tableau.depart_x) and (x < zone_tableau.depart_y + zone_tableau.dimension_fond_tableau)and
				(y > zone_tableau.depart_y) and (y < zone_tableau.depart_y + zone_tableau.dimension_fond_tableau) then

				partie.selection.verifier_bloc_selectionne(partie.tableau.liste_blocs, x, y)
				bouton_terminer.set_is_hover (false)

			elseif (x > bouton_terminer.depart_x) and (x < bouton_terminer.depart_x + bouton_terminer.image.width) and (y > bouton_terminer.depart_y)
					and (y < bouton_terminer.depart_y + bouton_terminer.image.height) then

				bouton_terminer.set_is_hover (true)

			else
				bouton_terminer.set_is_hover (false)

			end

		end

	on_mouse_down(is_left_button, is_right_button, is_middle_button: BOOLEAN; x, y: NATURAL_16)
			-- Méthode appelée lorsqu'un des boutons de la souris est appuyé
		do
			if is_left_button then

				if (x > partie.selection.coin_haut_gauche.image_depart_x) and (x < partie.selection.coin_haut_gauche.image_depart_x + partie.selection.image.width) and
				(y > partie.selection.coin_haut_gauche.image_depart_y) and (y < partie.selection.coin_haut_gauche.image_depart_y + partie.selection.image.height) then

					partie.selection.image := images_factory.image_selection_animation1
					partie.selection.image := images_factory.image_selection_animation2
					partie.selection.image := images_factory.image_selection
					partie.tableau.tourner_blocs(partie.selection.coin_haut_gauche)
					partie.tableau.verifier_combos
					partie.ajouter_points (partie.tableau.nb_blocs_detruits)
					partie.tableau.reset_nb_blocs_detruits
					partie.ajouter_temps (partie.tableau.nb_bonus_temps)
					partie.tableau.reset_nb_bonus_temps

				elseif (x > bouton_terminer.depart_x) and (x < bouton_terminer.depart_x + bouton_terminer.image.width) and (y > bouton_terminer.depart_y)
						and (y < bouton_terminer.depart_y + bouton_terminer.image.height) then
					terminer_partie

				end

			end

		end


	on_iteration
			-- Méthode lancée à chaque itération du jeu. (Redessine les différentes zones du jeu)
		do
			if en_cours then
				compteur_iteration := compteur_iteration + 1
				if compteur_iteration >= 10 then
					zone_tableau.index_animation_bloc_arc_en_ciel := ((zone_tableau.index_animation_bloc_arc_en_ciel)\\
																	images_factory.liste_images_bloc_arc_en_ciel.count) + 1
					compteur_iteration := 0

				end
				partie.calculer_temps_ecoule
				partie.calculer_temps_restant

				if partie.temps_restant = 0 then
					terminer_partie
				else
					dessiner
				end
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

			if bouton_terminer.is_hover then
				controleur.screen_surface.draw_surface (bouton_terminer.image_hover, bouton_terminer.depart_x, bouton_terminer.depart_y)
			else
				controleur.screen_surface.draw_surface (bouton_terminer.image, bouton_terminer.depart_x, bouton_terminer.depart_y)
			end

			zone_tableau.set_tableau (partie.tableau)
			zone_tableau.dessiner
			zone_temps.set_temps_restant (partie.temps_restant)
			zone_temps.dessiner
			zone_score.set_score (partie.score)
			zone_score.dessiner
			controleur.screen_surface.draw_surface (partie.selection.image, partie.selection.coin_haut_gauche.image_depart_x - 5, partie.selection.coin_haut_gauche.image_depart_y - 5)
			controleur.flip_screen
		end


	lancer_musique
		-- <Precursor>
		do
			sons_factory.jouer_musique (sons_factory.musique_partie)
		end

	terminer_partie
		-- Terminer la partie lorsque le temps est écoulé ou que le joueur clique sur le bouton Terminer partie
		local
			l_affichage_fin_partie: AFFICHAGE_FIN_PARTIE
		do
			partie_terminee := true
			en_cours := false
			create l_affichage_fin_partie.make (partie.score)
			l_affichage_fin_partie.en_cours := true
		end


	invariant
		partie_initialise: partie /= Void
		zone_tableau_initialise: zone_tableau /= Void
		zone_score_initialise: zone_score /= Void
		zone_temps_initialise: zone_temps /= Void
		bouton_terminer_initialise: bouton_terminer /= Void
		compteur_iteration_initialise: compteur_iteration /= Void
		partie_terminee_initialise: partie_terminee /= Void

end
