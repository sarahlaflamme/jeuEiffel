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
			create {GAME_SURFACE_IMG_FILE} image_bouton_commencer_partie.make_with_alpha ("Images/Bouton_Commencer_Partie.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_commencer_partie_hover.make_with_alpha ("Images/Bouton_Commencer_Partie_Hover.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_terminer.make_with_alpha ("Images/Bouton_Terminer.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_terminer_hover.make_with_alpha ("Images/Bouton_Terminer_Hover.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_enregistrer_score.make_with_alpha ("Images/Bouton_Enregistrer_Score.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_enregistrer_score_hover.make_with_alpha ("Images/Bouton_Enregistrer_Score_Hover.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_quitter.make_with_alpha ("Images/Bouton_Quitter.png")
			create {GAME_SURFACE_IMG_FILE} image_bouton_quitter_hover.make_with_alpha ("Images/Bouton_Quitter_Hover.png")


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

			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel1.make("Images/Bloc_Arc_en_Ciel1.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel2.make("Images/Bloc_Arc_en_Ciel2.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel3.make("Images/Bloc_Arc_en_Ciel3.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel4.make("Images/Bloc_Arc_en_Ciel4.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel5.make("Images/Bloc_Arc_en_Ciel5.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel6.make("Images/Bloc_Arc_en_Ciel6.png")
			create {GAME_SURFACE_IMG_FILE} image_bloc_arc_en_ciel7.make("Images/Bloc_Arc_en_Ciel7.png")
			create {ARRAYED_LIST[GAME_SURFACE]} liste_images_bloc_arc_en_ciel.make (7)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel1)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel2)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel3)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel4)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel5)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel6)
			liste_images_bloc_arc_en_ciel.extend (image_bloc_arc_en_ciel7)



			-- Images de la partie
			create {GAME_SURFACE_IMG_FILE} image_sablier.make_with_alpha ("Images/Sablier.png")

			create {GAME_SURFACE_IMG_FILE} image_selection.make_with_alpha ("Images/Selection.png")
			create {GAME_SURFACE_IMG_FILE} image_selection_animation1.make_with_alpha ("Images/Selection_Animation1.png")
			create {GAME_SURFACE_IMG_FILE} image_selection_animation2.make_with_alpha ("Images/Selection_Animation2.png")
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

	image_bloc_arc_en_ciel1: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 1)
	image_bloc_arc_en_ciel2: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 2)
	image_bloc_arc_en_ciel3: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 3)
	image_bloc_arc_en_ciel4: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 4)
	image_bloc_arc_en_ciel5: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 5)
	image_bloc_arc_en_ciel6: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 6)
	image_bloc_arc_en_ciel7: GAME_SURFACE
		-- Image d'un bloc de n'importe quelle couleur de type 'Arc-en-ciel' (animation 7)		
	liste_images_bloc_arc_en_ciel: LIST[GAME_SURFACE]
		-- Liste contenant les images du bloc arc_en_ciel

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
	image_bouton_commencer_partie: GAME_SURFACE
		-- Image du bouton Commencer partie
	image_bouton_commencer_partie_hover: GAME_SURFACE
		-- Image du bouton Commencer partie lorsque la souris est dessus
	image_bouton_terminer: GAME_SURFACE
		-- Image du bouton Terminer
	image_bouton_terminer_hover: GAME_SURFACE
		-- Image du bouton Terminer lorsque la souris est dessus
	image_bouton_enregistrer_score: GAME_SURFACE
		-- Image du bouton Enregistrer Score
	image_bouton_enregistrer_score_hover: GAME_SURFACE
		-- Image du bouton Enregistrer Score lorsque la souris est dessus
	image_bouton_quitter: GAME_SURFACE
		-- Image du bouton Quitter
	image_bouton_quitter_hover: GAME_SURFACE
		-- Image du bouton Quitter lorsque la souris est dessus

	image_sablier: GAME_SURFACE
		-- Image du sablier au dessus du temps restant dans une partie

	image_selection: GAME_SURFACE
		-- Image du carré autour des 4 blocs sélectionnés
	image_selection_animation1: GAME_SURFACE
		-- Image du carré autour des 4 blocs sélectionnés
	image_selection_animation2: GAME_SURFACE
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
