note
	description: "Bouton"
	author: "Sarah Laflamme"
	date: "$Date$"
	revision: "$Revision$"

class
	BOUTON

create
	make

feature {NONE} -- Initialisation

	make(a_image, a_image_hover: GAME_SURFACE; a_depart_x, a_depart_y: INTEGER)
			-- Constructeur de `Current'.
		require
			image_valide: a_image /= Void
			image_hover_valide: a_image_hover /= Void
			depart_x_valide: a_depart_x >= 0
			depart_y_valide: a_depart_y >= 0
		do
			image := a_image
			image_hover := a_image_hover
			depart_x := a_depart_x
			depart_y := a_depart_y
			is_hover := false
		ensure
			image_set: image = a_image
			image_hover_set: image_hover = a_image_hover
			depart_x_set: depart_x = a_depart_x
			deart_y_set: depart_y = a_depart_y
		end


feature -- Attributs

	image: GAME_SURFACE assign set_image
		-- Image du bouton

	image_hover: GAME_SURFACE assign set_image_hover
		-- Image lorsque la souris est sur le bouton

	depart_x: INTEGER assign set_depart_x
		-- Position de départ horizontale de `Current'

	depart_y: INTEGER assign set_depart_y
		-- Position de départ verticale de `Current'

	is_hover: BOOLEAN assign set_is_hover
		-- Indique si la souris se trouve sur le bouton


feature -- Setters

	set_image(a_image: GAME_SURFACE)
		-- Assigne l'image
		require
			image_valide: a_image /= Void
		do
			image := a_image
		ensure
			image_set: image = a_image
		end

	set_image_hover(a_image_hover: GAME_SURFACE)
		-- Assigne l'image lorsque la souris est dessus
		require
			image_hover_valide: a_image_hover /= Void
		do
			image_hover := a_image_hover
		ensure
			image_hover_set: image_hover = a_image_hover
		end

	set_depart_x(a_depart_x: INTEGER)
		-- Assigne une valeur à depart_x
		require
			depart_x_valide: a_depart_x >= 0
		do
			depart_x := a_depart_x
		ensure
			depart_x_set: depart_x = a_depart_x
		end

	set_depart_y(a_depart_y: INTEGER)
		-- Assigne une valeur à depart_y
		require
			depart_y_valide: a_depart_y >= 0
		do
			depart_y := a_depart_y
		ensure
			depart_y_set: depart_y = a_depart_y
		end

	set_is_hover(a_is_hover: BOOLEAN)
		-- Assigne la valeur à is_hover
		do
			is_hover := a_is_hover
		ensure
			is_hover_set: is_hover = a_is_hover
		end


end
