note
	description: "Summary description for {AFFICHAGE_INSTRUCTIONS}."
	author: ""
	date: "$Date$"
	revision: "$Revision$"

class
	AFFICHAGE_INSTRUCTIONS

inherit
	AFFICHAGE

create
	make

feature {NONE} -- Initialisation

	make(a_controleur:GAME_LIB_CONTROLLER)
			-- Constructeur de `Current'.
		do
			set_controleur(a_controleur)

		end

feature -- Setters

	set_controleur(a_controleur: GAME_LIB_CONTROLLER)
		-- Assigne le controleur de jeu
		do
			controleur := a_controleur
		end


end
