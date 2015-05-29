note
	description: "Classe permettant de partager la factory de sons en tant que singleton."
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	SONS_FACTORY_SHARED

feature

	sons_factory: SONS_FACTORY
		once
			create Result.make
		end

end
