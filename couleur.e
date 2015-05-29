note
	description: "Couleur d'un bloc"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	COULEUR

create
	make

feature {NONE} -- Initialisation

	make(a_nom: STRING)
			-- Constructeur de `Current'.
		do
			nom := a_nom

		end


feature -- Attributs

	nom: STRING assign set_nom
		-- Nom de la couleur


feature -- Setters

	set_nom(a_nom: STRING)
		-- Assigne le nom de la couleur
		do
			nom := a_nom
		ensure
			nom_set: nom = a_nom
		end

invariant
	nom_initialise: nom /= Void
	
end
