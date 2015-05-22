note
	description: "Repr�sente le rectangle qui entoure les 4 blocs s�lectionn�s"
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
			-- L'image repr�sentant la s�lection

	coin_haut_gauche: BLOC assign set_coin_haut_gauche
			-- Le bloc du coin haut gauche de la s�lection



feature -- Setters

	set_image(a_image: GAME_SURFACE)
		-- Assigne l'image � utiliser
		do
			image := a_image
		end

	set_coin_haut_gauche(a_coin_haut_gauche: BLOC)
		-- Assigne le bloc du coin haut gauche
		do
			coin_haut_gauche := a_coin_haut_gauche
		end


feature -- M�thodes



end
