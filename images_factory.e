note
	description: "Factory qui crée toutes les images utilisées dans l'application"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	IMAGES_FACTORY

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		do
			nb_instance.put (nb_instance.item + 1)

			-- Images du menu
			create {GAME_SURFACE_IMG_FILE} image_menu.make_with_alpha ("Images/Menu_Principal.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_jouer.make_with_alpha ("Images/Bouton_Jouer.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_jouer_hover.make_with_alpha ("Images/Bouton_Jouer_hover.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_instructions.make_with_alpha ("Images/Bouton_Instructions.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_instructions_hover.make_with_alpha ("Images/Bouton_Instructions_Hover.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_a_propos.make_with_alpha ("Images/Bouton_A_Propos.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_a_propos_hover.make_with_alpha ("Images/Bouton_A_Propos_Hover.png")


			-- Blocs
			create {GAME_SURFACE_IMG_FILE} image_bloc_bleu_normal.make("Images/Bloc_Bleu_Normal.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_bleu_temps_bonus.make("Images/Bloc_Bleu_TempsBonus.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_bleu_double_points.make("Images/Bloc_Bleu_DoublePoints.png")

			create {GAME_SURFACE_IMG_FILE} image_bloc_jaune_normal.make("Images/Bloc_Jaune_Normal.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_jaune_temps_bonus.make("Images/Bloc_Jaune_TempsBonus.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_jaune_double_points.make("Images/Bloc_Jaune_DoublePoints.png")

			create {GAME_SURFACE_IMG_FILE} image_bloc_rose_normal.make("Images/Bloc_Rose_Normal.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_rose_temps_bonus.make("Images/Bloc_Rose_TempsBonus.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_rose_double_points.make("Images/Bloc_Rose_DoublePoints.png")

			create {GAME_SURFACE_IMG_FILE} image_bloc_mauve_normal.make("Images/Bloc_Mauve_Normal.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_mauve_temps_bonus.make("Images/Bloc_Mauve_TempsBonus.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_mauve_double_points.make("Images/Bloc_Mauve_DoublePoints.png")

			create {GAME_SURFACE_IMG_FILE} image_bloc_orange_normal.make("Images/Bloc_Orange_Normal.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_orange_temps_bonus.make("Images/Bloc_Orange_TempsBonus.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_orange_double_points.make("Images/Bloc_Orange_DoublePoints.png")

			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel.make("Images/Bloc_Arc_en_Ciel.png")


			-- Images de la partie
			create {GAME_SURFACE_IMG_FILE} image_sablier.make_with_alpha ("Images/Sablier.png")
			create {GAME_SURFACE_IMG_FILE} image_selection.make_with_alpha ("Images/Selection.png")
		end

feature -- Images

	image_bloc_bleu_normal: GAME_SURFACE
		-- Image d'un bloc bleu de type 'Normal'
	image_bloc_bleu_temps_bonus: GAME_SURFACE
		-- Image d'un bloc bleu de type 'Temps Bonus'
	image_bloc_bleu_double_points: GAME_SURFACE
		-- Image d'un bloc bleu de type 'Double Points'

	image_bloc_jaune_normal: GAME_SURFACE
		-- Image d'un bloc jaune de type 'Normale
	image_bloc_jaune_temps_bonus: GAME_SURFACE
		-- Image d'un bloc jaune de type 'Temps Bonus'
	image_bloc_jaune_double_points: GAME_SURFACE
		-- Image d'un bloc jaune de type 'Double Points'

	image_bloc_rose_normal: GAME_SURFACE
		-- Image d'un bloc rose de type 'Normal'
	image_bloc_rose_temps_bonus: GAME_SURFACE
		-- Image d'un bloc rose de type 'Temps Bonus'
	image_bloc_rose_double_points: GAME_SURFACE
		-- Image d'un bloc rose de type 'Double Points'

	image_bloc_mauve_normal: GAME_SURFACE
		-- Image d'un bloc mauve de type 'Normal'
	image_bloc_mauve_temps_bonus: GAME_SURFACE
		-- Image d'un bloc mauve de type 'Temps Bonus'
	image_bloc_mauve_double_points: GAME_SURFACE
		-- Imge d'un bloc mauve de type 'Double Points'

	image_bloc_orange_normal: GAME_SURFACE
		-- Image d'un bloc orange de type 'Normal'
	image_bloc_orange_temps_bonus: GAME_SURFACE
		-- Image d'un bloc orange de type 'Temps Bonus'
	image_bloc_orange_double_points: GAME_SURFACE
		-- Image d'un bloc orange de type 'Double Points'

	image_bloc_arc_en_ciel: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel'

	image_menu: GAME_SURFACE
		--Image du menu
	image_bouton_jouer: GAME_SURFACE
		-- Image du bouton Jouer
	image_bouton_jouer_hover: GAME_SURFACE
		-- Image du bouton Jouer lorsque la souris est dessus
	image_bouton_instructions: GAME_SURFACE
		-- Image du bouton Instructions
	image_bouton_instructions_hover: GAME_SURFACE
		-- Image du bouton Instructions lorsque la souris est dessus
	image_bouton_a_propos: GAME_SURFACE
		-- Image du bouton À propos
	image_bouton_a_propos_hover: GAME_SURFACE
		-- Image du bouton À propos lorsque la souris est dessus

	image_sablier: GAME_SURFACE
		-- Image du sablier au dessus du temps restant dans une partie
	image_selection: GAME_SURFACE
		-- Image du carré autour des 4 blocs sélectionnés


feature {NONE} -- Implémentation

	nb_instance:CELL[INTEGER]
		-- Nombre d'instance de la factory
		once
			create Result.put (0)
		end

invariant

	singleton_valide: nb_instance.item = 1

end
