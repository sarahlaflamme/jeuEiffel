note
	description: "Controleur qui gère la partie et l'affichage de la partie"
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	CONTROLEUR_PARTIE

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		do
			create partie.make
			create affichage_partie.make(partie)

		end

feature -- Attributs

	partie: PARTIE
		-- Partie utilisée dans l'affichage

	affichage_partie: AFFICHAGE_PARTIE
		-- Zone représentant l'affichage du tableau de jeu

end
