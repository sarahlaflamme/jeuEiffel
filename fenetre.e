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


feature -- Méthodes

	lancer_jeu
		-- Fonction principale du jeu
		local

		do
			-- Création de la fenêtre
			controleur.create_screen_surface (800, 600, 16, true, true, false, true, false)

			create affichage_menu.make
			affichage_menu.en_cours := true

			controleur.launch

		end

end
