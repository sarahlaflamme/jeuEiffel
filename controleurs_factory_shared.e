note
	description: "Summary description for {IMAGES_FACTORY_SHARED}."
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
