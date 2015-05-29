note
	description: "Classe permettant de partager la factory de controleurs en tant que singleton."
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	CONTROLEURS_FACTORY_SHARED

feature

	controleurs_factory: CONTROLEURS_FACTORY
		once
			create Result.make
		end

end
