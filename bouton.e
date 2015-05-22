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
		do
			set_image(a_image)
			set_image_hover(a_image_hover)
			set_depart_x(a_depart_x)
			set_depart_y(a_depart_y)
			set_is_hover(false)
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
		do
			image := a_image
		end

	set_image_hover(a_image_hover: GAME_SURFACE)
		-- Assigne l'image lorsque la souris est dessus
		do
			image_hover := a_image_hover
		end

	set_depart_x(a_depart_x: INTEGER)
		-- Assigne une valeur à depart_x
		do
			depart_x := a_depart_x
		end

	set_depart_y(a_depart_y: INTEGER)
		-- Assigne une valeur à depart_y
		do
			depart_y := a_depart_y
		end

	set_is_hover(a_is_hover: BOOLEAN)
		-- Assigne la valeur à is_hover
		do
			is_hover := a_is_hover
		end


end
