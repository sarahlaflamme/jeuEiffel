note
	description: "Classe représentant l'affichage d'une zone de la fenêtre du jeu"
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	AFFICHAGE

inherit
	IMAGES_FACTORY_SHARED
	SONS_FACTORY_SHARED
	CONTROLEURS_FACTORY_SHARED

feature -- Attributs

	controleur:GAME_LIB_CONTROLLER
		-- Controleur de la librairie de jeu

	controleur_images:GAME_IMG_CONTROLLER
		-- Controleur de la librairie d'images

	controleur_audio: AUDIO_CONTROLLER
		-- Controleur de la librairie audio

	controleur_texte: GAME_TEXT_CONTROLLER
		-- Controleur de la librairie de texte

end
