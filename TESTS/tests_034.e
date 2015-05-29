note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_034
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{AFFICHAGE_MENU}.make"
		local
			v_1: detachable ANY
			v_2: IMAGES_FACTORY
			v_3: GAME_SURFACE_IMG_FILE
			v_4: GAME_SURFACE_IMG_FILE
			v_5: INTEGER_32
			v_6: ZONE_SCORE
			v_7: INTEGER_32
			v_8: INTEGER_32
			v_9: BLOC
			v_10: AFFICHAGE_MENU
		do
			v_1 := Void
			execute_safe (agent: IMAGES_FACTORY
				do
					create {IMAGES_FACTORY} Result.make
				end)
			check attached {IMAGES_FACTORY} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.image_bloc_arc_en_ciel7)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot2 then
				v_3 := l_ot2
			end
			execute_safe (agent v_2.image_bloc_jaune_double_points)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot3 then
				v_4 := l_ot3
			end
			v_5 := {INTEGER_32} 4
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_SCORE
				do
					create {ZONE_SCORE} Result.make (a_arg1)
				end (v_5))
			check attached {ZONE_SCORE} last_object as l_ot4 then
				v_6 := l_ot4
			end
			v_7 := {INTEGER_32} -1
			v_8 := {INTEGER_32} -1
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_7, v_8))
			check attached {BLOC} last_object as l_ot5 then
				v_9 := l_ot5
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot6 then
				v_10 := l_ot6
			end
		end

end

