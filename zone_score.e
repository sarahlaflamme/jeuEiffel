note
	description: "Affichage du score de la partie en cours"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	ZONE_SCORE

inherit
	ZONE

	redefine
		dessiner
	end

create
	make

feature {NONE} -- Initialisation

	make(a_score: INTEGER)
			-- Constructeur de `Current'.
		do
			controleur := controleurs_factory.controleur
			controleur_images := controleurs_factory.controleur_images
			controleur_audio := controleurs_factory.controleur_audio
			controleur_texte := controleurs_factory.controleur_texte

			depart_x := 560
			depart_y := 300


			create police_texte_score.make ("estre.ttf", 30)
			create couleur_texte.make_rgb(43, 24, 24)
			create couleur_fond.make_rgb(255, 255, 255)

			fond_depart_x := depart_x
			fond_depart_y := depart_y

			create fond.make (200, 130)
			fond.fill_rect (couleur_fond, 0, 0, 200, 130)

			create titre_score.make_blended ("SCORE", police_texte_score, couleur_texte)

		end

feature -- Attributs

	score: INTEGER assign set_score
		-- Score à afficher dans la zone

	police_texte_score: GAME_FONT
		-- Police du texte représentant le score

	couleur_texte: GAME_COLOR
		-- Couleur du texte

	couleur_fond: GAME_COLOR
		-- Couleur du fond de la zone

	titre_score: GAME_SURFACE_TEXT
		-- Texte affiché au dessus du score

	texte_score: GAME_SURFACE_TEXT
		-- Texte qui affiche le score

	fond: GAME_SURFACE
		-- Rectangle sur lequel le texte est écrit

	fond_depart_x: INTEGER assign set_fond_depart_x
		-- Position horizontale dans la fenêtre à laquelle le rectangle commence

	fond_depart_y: INTEGER assign set_fond_depart_y
		-- Position verticale dans la fenêtre à laquelle le rectangle commence


feature -- Setters

	set_score(a_score: INTEGER)
		-- Assigne le score à afficher
		require
			score_valide: a_score >= 0
		do
			score := a_score
		ensure
			score_set: score = a_score
		end


	set_fond_depart_x(a_fond_depart_x: INTEGER)
		-- Assigne la position x de départ du fond
		require
			fond_depart_x_valide: a_fond_depart_x >= 0
		do
			fond_depart_x := a_fond_depart_x
		ensure
			fond_depart_x_set: fond_depart_x = a_fond_depart_x
		end

	set_fond_depart_y(a_fond_depart_y: INTEGER)
		-- Assigne la position y de départ du fond
		require
			fond_depart_y_valide: a_fond_depart_y >= 0
		do
			fond_depart_y := a_fond_depart_y
		ensure
			fond_depart_y_set: fond_depart_y = a_fond_depart_y
		end


feature -- Méthodes

	dessiner
		-- <Precursor>
		do
			controleur.screen_surface.draw_surface (fond, fond_depart_x, fond_depart_y)
			controleur.screen_surface.draw_surface (titre_score, fond_depart_x + 60, fond_depart_y + 15)

			create texte_score.make_shaded (score.out + " points", police_texte_score, couleur_texte, couleur_fond)
			controleur.screen_surface.draw_surface (texte_score, fond_depart_x + fond.width//2 - texte_score.width//2, fond_depart_y + 60)
		end


invariant
	score_initialise: score /= Void
	police_texte_score_initialise: police_texte_score /= Void
	couleur_texte_initialise: couleur_texte /= Void
	couleur_fond_initialise: couleur_fond /= Void
	titre_score_initialise: titre_score /= Void
	fond_initialise: fond /= Void
	fond_depart_x_initialise: fond_depart_x /= Void
	fond_depart_y_initialise: fond_depart_y /= Void


end
