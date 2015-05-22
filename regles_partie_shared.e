note
	description: "Classe qui permet de partager les r�gles de la partie en tant que singleton"
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	REGLES_PARTIE_SHARED

feature

	regles_partie: REGLES_PARTIE
		-- Singleton qui contient les r�gles de la partie
		once
			create Result.make
		end

end
