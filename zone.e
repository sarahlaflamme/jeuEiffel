note
	description: "Classe représentant une partie d'un affichage"
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
		-- Position horizontale à laquelle la zone commence

	depart_y: INTEGER
		-- Position verticale à laquelle la zone commence

feature -- Setters

	set_depart_x(a_depart_x: INTEGER)
		-- Assigne la position de départ horizontale
		require
			depart_x_valide: depart_x >= 0
		do
			depart_x := a_depart_x
		ensure
			depart_x_set: depart_x = a_depart_x
		end

	set_depart_y(a_depart_y: INTEGER)
		-- Assigne la position de départ verticale
		require
			depart_y_valide: depart_y >= 0
		do
			depart_y := a_depart_y
		ensure
			depart_y_set: depart_y = a_depart_y
		end

feature -- Méthodes

	dessiner
		-- Affichage de toutes les composantes de la zone
		do

		end

invariant
	depart_x_initialise: depart_x /= Void
	depart_y_initialise: depart_y /= Void
	depart_x_valide: depart_x >= 0
	depart_y_valide: depart_y >= 0

end
