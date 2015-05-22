note
	description: "Classe permettant de partager la factory d'images en tant que singleton."
	author: "Sarah Laflamme"
	date: "$Date$"

deferred class
	IMAGES_FACTORY_SHARED

feature

	images_factory:IMAGES_FACTORY
		once
			create Result.make
		end

end
