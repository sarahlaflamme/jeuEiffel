note
	description: "Factory qui crée tous les controleurs de jeu nécessaires à la partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	CONTROLEURS_FACTORY

create
	make

feature {NONE} -- Initialization

	make
			-- Initialization for `Current'.
		do
			nb_instance.put (nb_instance.item + 1)

			create controleur.make
			create controleur_images.make
			create controleur_audio.make
			create controleur_texte.make

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


feature {NONE} -- Implementation

	nb_instance:CELL[INTEGER]
		-- Nombre d'instance de la factory
		once
			create Result.put (0)
		end

invariant

	singleton_valide: nb_instance.item = 1

end
