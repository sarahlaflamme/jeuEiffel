note
	description: "Classe repr�sentant une partie d'un affichage"
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	ZONE

inherit
	IMAGES_FACTORY_SHARED
	CONTROLEURS_FACTORY_SHARED
	REGLES_PARTIE_SHARED

feature -- Controleurs

	controleur:GAME_LIB_CONTROLLER
		-- Controleur de la librairie de jeu

	controleur_images:GAME_IMG_CONTROLLER
		-- Controleur de la librairie d'images

	controleur_audio: AUDIO_CONTROLLER
		-- Controleur de la librairie audio

	controleur_texte: GAME_TEXT_CONTROLLER
		-- Controleur de la librairie de texte

feature -- Attributs

	depart_x: INTEGER
		-- Position horizontale � laquelle la zone commence

	depart_y: INTEGER
		-- Position verticale � laquelle la zone commence

feature -- Setters

	set_depart_x(a_depart_x: INTEGER)
		-- Assigne la position de d�part horizontale

		do
			depart_x := a_depart_x
		end

	set_depart_y(a_depart_y: INTEGER)
		-- Assigne la position de d�part verticale

		do
			depart_y := a_depart_y
		end

end
