note
	description: "Fenêtre dans laquelle se déroule le jeu"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	FENETRE

inherit
	CONTROLEURS_FACTORY_SHARED

create
	make

feature {NONE} -- Initialization

	make
		local

		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			controleur.enable_video -- Activer fonctionnalités vidéo
			controleur_images.enable_image (true, false, false) -- active png, jpg, tif
			controleur_audio.enable_sound -- Activer son
			controleur_texte.enable_text

			lancer_jeu

			controleur_texte.quit_library
			controleur_audio.quit_library
			controleur_images.quit_library
			controleur.quit_library
		end


feature -- Attributs

	controleur:GAME_LIB_CONTROLLER
		-- Controleur de la librairie de jeu

	controleur_images:GAME_IMG_CONTROLLER
		-- Controleur de la librairie d'images

	controleur_audio: AUDIO_CONTROLLER
		-- Controleur de la librairie audio

	controleur_texte: GAME_TEXT_CONTROLLER
		-- Controleur de la librairie de texte

	affichage_menu:AFFICHAGE_MENU
		-- Écran représentant le menu du jeu

	affichage_partie: AFFICHAGE_PARTIE
		-- Écran représentant une partie du jeu

	affichage_fin_partie: AFFICHAGE_FIN_PARTIE
		-- Écran représentant la fin d'une partie

	affichage_instructions: AFFICHAGE_INSTRUCTIONS
		-- Écran représentant les instructions du jeu


feature -- Méthodes

	lancer_jeu
		-- Fonction principale du jeu
		local

		do
			-- Création de la fenêtre
			controleur.create_screen_surface (800, 600, 16, true, true, false, true, false)

			create affichage_menu.make
			affichage_menu.set_en_cours (true)
			controleur.launch

		end


	on_iteration
		-- Rafraichit l'image à chaque itération
		do
--			controleur.screen_surface.fill_rect (create {GAME_COLOR}.make_rgb(43, 24, 24), 0, 0, controleur.screen_surface.width, controleur.screen_surface.height)
--			if affichage_menu.partie_lancee = true then
--				create affichage_partie.make (create {PARTIE}.make)
--				affichage_partie.set_en_cours (true)
--				affichage_menu.set_partie_lancee (false)
--			elseif affichage_partie /= Void then
--				if affichage_partie.partie_terminee then
--					create affichage_fin_partie.make(affichage_partie.partie.score)
--					affichage_fin_partie.set_en_cours (true)
--					affichage_partie.set_partie_terminee (false)
--				end
--			end
		end


end
