note
	description: "Représente le rectangle qui entoure les 4 blocs sélectionnés"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	SELECTION

inherit
	IMAGES_FACTORY_SHARED

create
	make

feature {NONE} -- Initialisation

	make(a_bloc_selectionne: BLOC)
			-- Constructeur de `Current'.
		do
			set_image(images_factory.image_selection)
			set_coin_haut_gauche(a_bloc_selectionne)

		end


feature -- Attributs

	image: GAME_SURFACE assign set_image
			-- L'image représentant la sélection

	coin_haut_gauche: BLOC assign set_coin_haut_gauche
			-- Le bloc du coin haut gauche de la sélection



feature -- Setters

	set_image(a_image: GAME_SURFACE)
		-- Assigne l'image à utiliser
		do
			image := a_image
		end

	set_coin_haut_gauche(a_coin_haut_gauche: BLOC)
		-- Assigne le bloc du coin haut gauche
		do
			coin_haut_gauche := a_coin_haut_gauche
		end


feature -- Méthodes



end
