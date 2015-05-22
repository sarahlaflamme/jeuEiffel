note
	description : "jeu application root class"
	date        : "$Date$"
	revision    : "$Revision$"

class
	APPLICATION

inherit
	ARGUMENTS

create
	make

feature {NONE} -- Initialization

	make
			-- Run application.
		local
			fenetre_principale:FENETRE

		do
			create fenetre_principale.make
		end

end
