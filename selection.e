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
			image := images_factory.image_selection
			coin_haut_gauche := a_bloc_selectionne

		end


feature -- Attributs

	image: GAME_SURFACE assign set_image
			-- L'image représentant la sélection

	coin_haut_gauche: BLOC assign set_coin_haut_gauche
			-- Le bloc du coin haut gauche de la sélection



feature -- Setters

	set_image(a_image: GAME_SURFACE)
		-- Assigne l'image à utiliser
		require
			image_valide: a_image /= Void
		do
			image := a_image
		ensure
			image_set: image = a_image
		end

	set_coin_haut_gauche(a_coin_haut_gauche: BLOC)
		-- Assigne le bloc du coin haut gauche
		do
			coin_haut_gauche := a_coin_haut_gauche
		ensure
			coin_haut_gauche_set: coin_haut_gauche = a_coin_haut_gauche
		end


feature -- Méthodes

	verifier_bloc_selectionne(a_liste_blocs: LIST[LIST[BLOC]]; a_x, a_y: INTEGER)
		-- Vérifie la souris se trouve sur quel bloc et l'assigne à la sélection
		require
			liste_blocs_valide: a_liste_blocs /= Void
			x_valide: a_x >= 0
			y_valide: a_y >= 0
		local
			i: INTEGER -- Compteur de chaque ligne
			j: INTEGER -- Compter de chaque bloc d'une ligne
			position: INTEGER
		do

				from
				i := 1
				until
					i >= a_liste_blocs.count
				loop

					-- Vérifie tous les blocs de la ligne en cours et assigne le bloc à la sélection si besoin
					from
						j := 1
					until
						j >= a_liste_blocs.at(i).count
					loop

						if (a_x > a_liste_blocs.at(i).at(j).image_depart_x) and (a_x < a_liste_blocs.at(i).at(j).image_depart_x + a_liste_blocs.at(i).at(j).image.width)and
						(a_y > a_liste_blocs.at(i).at(j).image_depart_y) and (a_y < a_liste_blocs.at(i).at(j).image_depart_y + a_liste_blocs.at(i).at(j).image.height) then

							if i = a_liste_blocs.at(i).count then
								position := j - 1
							else
								position := j
							end

							coin_haut_gauche := a_liste_blocs.at(i).at(position)

						end

						j := j+1
					end

					i := i+1

			end

		end


invariant
	image_initialise: image /= Void
	coin_haut_gauche_initialise: coin_haut_gauche /= Void

end
