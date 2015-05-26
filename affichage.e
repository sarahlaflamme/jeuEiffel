note
	description: "Classe repr�sentant l'affichage d'une zone de la fen�tre du jeu"
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

	en_cours: BOOLEAN
		-- Indique si l'affichage est utilis� actuellement

feature -- Setters

	set_en_cours(a_en_cours: BOOLEAN)
		-- Assigne la valeur true ou false � en_cours
		do
			en_cours := a_en_cours
		end

feature -- M�thodes

	dessiner
		-- Affiche les composantes � l'�cran
		do

		end

end
