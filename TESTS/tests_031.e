note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_031
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.set_tableau"
		local
			v_1: detachable ANY
			v_2: PARTIE
			v_3: INTEGER_32
			v_4: TABLEAU
			v_5: ARRAYED_LIST [detachable ANY]
			v_6: INTEGER_32
			v_7: ZONE_TEMPS
			v_8: INTEGER_32
			v_9: AFFICHAGE_FIN_PARTIE
			v_10: AFFICHAGE_MENU
			v_11: INTEGER_32
			v_12: ZONE_SCORE
			v_13: ZONE_TABLEAU
			v_14: CONTROLEURS_FACTORY
			v_15: TABLEAU
			v_16: ZONE_TABLEAU
			v_17: IMAGES_FACTORY
			v_18: AFFICHAGE_INSTRUCTIONS
			v_19: AFFICHAGE_MENU
			v_20: REGLES_PARTIE
			v_21: INTEGER_32
			v_22: INTEGER_32
			v_23: ZONE_TEMPS
			v_24: POINTER
			v_25: GAME_SURFACE
			v_26: PARTIE
			v_27: INTEGER_32
			v_28: INTEGER_32
			v_29: INTEGER_32
			v_30: BLOC
			v_31: INTEGER_32
			v_32: INTEGER_32
			v_33: BOUTON
			v_34: GAME_SURFACE_IMG_FILE
			v_35: AFFICHAGE_MENU
			v_36: INTEGER_32
			v_37: INTEGER_32
			v_38: BOUTON
			v_39: GAME_SURFACE_IMG_FILE
			v_40: INTEGER_32
			v_41: AFFICHAGE_FIN_PARTIE
			v_42: INTEGER_32
			v_43: PARTIE
			v_44: SELECTION
			v_45: ZONE_TABLEAU
			v_46: INTEGER_32
			v_47: INTEGER_32
			v_48: IMAGES_FACTORY
			v_49: INTEGER_32
			v_50: INTEGER_32
			v_51: REGLES_PARTIE
			v_52: INTEGER_32
			v_53: AFFICHAGE_MENU
			v_54: INTEGER_32
			v_55: ZONE_TEMPS
			v_56: GAME_SURFACE_IMG_FILE
			v_57: ZONE_TABLEAU
			v_58: GAME_SURFACE
			v_59: TABLEAU
			v_60: INTEGER_32
			v_61: GAME_TEXT_CONTROLLER
			v_62: GAME_SURFACE_IMG_FILE
			v_63: GAME_SURFACE_IMG_FILE
			v_64: INTEGER_32
			v_65: AFFICHAGE_FIN_PARTIE
			v_66: GAME_SURFACE_IMG_FILE
			v_67: INTEGER_32
			v_68: CLIENT_RESEAU
			v_69: STRING_8
			v_70: GAME_TEXT_CONTROLLER
			v_71: ZONE_TABLEAU
		do
			v_1 := Void
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot1 then
				v_2 := l_ot1
			end
			v_3 := {INTEGER_32} 8
			execute_safe (agent v_2.set_temps_ecoule (v_3))
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot2 then
				v_4 := l_ot2
			end
			execute_safe (agent (a_arg1: NONE): ARRAYED_LIST [detachable ANY]
				do
					create {ARRAYED_LIST [detachable ANY]} Result.make_from_array (a_arg1)
				end (Void))
			check attached {ARRAYED_LIST [detachable ANY]} last_object as l_ot3 then
				v_5 := l_ot3
			end
			v_6 := {INTEGER_32} -2
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_6))
			check attached {ZONE_TEMPS} last_object as l_ot4 then
				v_7 := l_ot4
			end
			v_8 := {INTEGER_32} 5
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_8))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot5 then
				v_9 := l_ot5
			end
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot6 then
				v_10 := l_ot6
			end
			v_11 := {INTEGER_32} -2
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_SCORE
				do
					create {ZONE_SCORE} Result.make (a_arg1)
				end (v_11))
			check attached {ZONE_SCORE} last_object as l_ot7 then
				v_12 := l_ot7
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TABLEAU} last_object as l_ot8 then
				v_13 := l_ot8
			end
			execute_safe (agent v_13.controleurs_factory)
			check attached {CONTROLEURS_FACTORY} last_object as l_ot9 then
				v_14 := l_ot9
			end
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot10 then
				v_15 := l_ot10
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_15))
			check attached {ZONE_TABLEAU} last_object as l_ot11 then
				v_16 := l_ot11
			end
			execute_safe (agent v_16.images_factory)
			check attached {IMAGES_FACTORY} last_object as l_ot12 then
				v_17 := l_ot12
			end
			execute_safe (agent: AFFICHAGE_INSTRUCTIONS
				do
					create {AFFICHAGE_INSTRUCTIONS} Result.make
				end)
			check attached {AFFICHAGE_INSTRUCTIONS} last_object as l_ot13 then
				v_18 := l_ot13
			end
			execute_safe (agent v_13.dessiner)
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot14 then
				v_19 := l_ot14
			end
			execute_safe (agent v_13.regles_partie)
			check attached {REGLES_PARTIE} last_object as l_ot15 then
				v_20 := l_ot15
			end
			execute_safe (agent v_13.index_animation_bloc_arc_en_ciel)
			check attached {INTEGER_32} last_integer_32 as l_ot16 then
				v_21 := l_ot16
			end
			v_22 := {INTEGER_32} -5
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_22))
			check attached {ZONE_TEMPS} last_object as l_ot17 then
				v_23 := l_ot17
			end
			v_24 := default_pointer
			execute_safe (agent (a_arg1: POINTER): GAME_SURFACE
				do
					create {GAME_SURFACE} Result.make_from_pointer (a_arg1)
				end (v_24))
			check attached {GAME_SURFACE} last_object as l_ot18 then
				v_25 := l_ot18
			end
			execute_safe (agent v_2.calculer_temps_restant)
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot19 then
				v_26 := l_ot19
			end
			execute_safe (agent v_26.duree_partie)
			check attached {INTEGER_32} last_integer_32 as l_ot20 then
				v_27 := l_ot20
			end
			execute_safe (agent v_20.generer_liste_types_probabilites)
			v_28 := {INTEGER_32} 6
			v_29 := {INTEGER_32} -3
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_28, v_29))
			check attached {BLOC} last_object as l_ot21 then
				v_30 := l_ot21
			end
			v_31 := {INTEGER_32} 7
			v_32 := {INTEGER_32} 2
			execute_safe (agent (a_arg1: NONE; a_arg2: NONE; a_arg3: INTEGER_32; a_arg4: INTEGER_32): BOUTON
				do
					create {BOUTON} Result.make (a_arg1, a_arg2, a_arg3, a_arg4)
				end (Void, Void, v_31, v_32))
			check attached {BOUTON} last_object as l_ot22 then
				v_33 := l_ot22
			end
			execute_safe (agent v_17.image_bloc_mauve_double_points)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot23 then
				v_34 := l_ot23
			end
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot24 then
				v_35 := l_ot24
			end
			v_36 := {INTEGER_32} 2
			v_37 := {INTEGER_32} 2
			execute_safe (agent (a_arg1: GAME_SURFACE_IMG_FILE; a_arg2: GAME_SURFACE_IMG_FILE; a_arg3: INTEGER_32; a_arg4: INTEGER_32): BOUTON
				do
					create {BOUTON} Result.make (a_arg1, a_arg2, a_arg3, a_arg4)
				end (v_34, v_34, v_36, v_37))
			check attached {BOUTON} last_object as l_ot25 then
				v_38 := l_ot25
			end
			execute_safe (agent v_38.image)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot26 then
				v_39 := l_ot26
			end
			v_40 := {INTEGER_32} -4
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_40))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot27 then
				v_41 := l_ot27
			end
			execute_safe (agent v_2.duree_partie)
			check attached {INTEGER_32} last_integer_32 as l_ot28 then
				v_42 := l_ot28
			end
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot29 then
				v_43 := l_ot29
			end
			execute_safe (agent v_43.selection)
			check attached {SELECTION} last_object as l_ot30 then
				v_44 := l_ot30
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TABLEAU} last_object as l_ot31 then
				v_45 := l_ot31
			end
			v_46 := {INTEGER_32} 2
			execute_safe (agent v_45.set_depart_y (v_46))
			execute_safe (agent v_2.temps_restant)
			check attached {INTEGER_32} last_integer_32 as l_ot32 then
				v_47 := l_ot32
			end
			execute_safe (agent v_44.images_factory)
			check attached {IMAGES_FACTORY} last_object as l_ot33 then
				v_48 := l_ot33
			end
			v_49 := {INTEGER_32} -4
			execute_safe (agent v_26.set_temps_ecoule (v_49))
			execute_safe (agent v_16.depart_x)
			check attached {INTEGER_32} last_integer_32 as l_ot34 then
				v_50 := l_ot34
			end
			execute_safe (agent v_2.regles_partie)
			check attached {REGLES_PARTIE} last_object as l_ot35 then
				v_51 := l_ot35
			end
			v_52 := {INTEGER_32} 9
			execute_safe (agent v_2.ajouter_temps (v_52))
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot36 then
				v_53 := l_ot36
			end
			v_54 := {INTEGER_32} -1
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_54))
			check attached {ZONE_TEMPS} last_object as l_ot37 then
				v_55 := l_ot37
			end
			execute_safe (agent v_17.image_bouton_enregistrer_score_hover)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot38 then
				v_56 := l_ot38
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TABLEAU} last_object as l_ot39 then
				v_57 := l_ot39
			end
			execute_safe (agent v_57.fond_tableau)
			check attached {GAME_SURFACE} last_object as l_ot40 then
				v_58 := l_ot40
			end
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot41 then
				v_59 := l_ot41
			end
			v_60 := {INTEGER_32} -6
			execute_safe (agent v_59.set_nb_blocs_detruits (v_60))
			execute_safe (agent v_14.controleur_texte)
			check attached {GAME_TEXT_CONTROLLER} last_object as l_ot42 then
				v_61 := l_ot42
			end
			execute_safe (agent v_17.image_bloc_arc_en_ciel6)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot43 then
				v_62 := l_ot43
			end
			execute_safe (agent v_17.image_selection)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot44 then
				v_63 := l_ot44
			end
			v_64 := {INTEGER_32} 8
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_64))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot45 then
				v_65 := l_ot45
			end
			execute_safe (agent v_17.image_sablier)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot46 then
				v_66 := l_ot46
			end
			v_67 := {INTEGER_32} -5
			execute_safe (agent (a_arg1: INTEGER_32): CLIENT_RESEAU
				do
					create {CLIENT_RESEAU} Result.make (a_arg1)
				end (v_67))
			check attached {CLIENT_RESEAU} last_object as l_ot47 then
				v_68 := l_ot47
			end
			execute_safe (agent v_68.string_adresse)
			check attached {STRING_8} last_object as l_ot48 then
				v_69 := l_ot48
			end
			execute_safe (agent v_13.controleur_texte)
			check attached {GAME_TEXT_CONTROLLER} last_object as l_ot49 then
				v_70 := l_ot49
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TABLEAU} last_object as l_ot50 then
				v_71 := l_ot50
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_71.set_tableau (Void))
		end

end

