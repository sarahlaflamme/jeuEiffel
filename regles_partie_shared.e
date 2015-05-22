note
	description: "Classe qui permet de partager les règles de la partie en tant que singleton"
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	REGLES_PARTIE_SHARED

feature

	regles_partie: REGLES_PARTIE
		-- Singleton qui contient les règles de la partie
		once
			create Result.make
		end

end
