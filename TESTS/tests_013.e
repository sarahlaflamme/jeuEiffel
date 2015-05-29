note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_013
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{APPLICATION}.make"
		local
			v_1: detachable ANY
			v_2: TYPE_DOUBLE_POINTS
			v_3: IMAGES_FACTORY
			v_4: GAME_SURFACE_IMG_FILE
			v_5: AFFICHAGE_INSTRUCTIONS
			v_6: REGLES_PARTIE
			v_7: APPLICATION
		do
			v_1 := Void
			execute_safe (agent: TYPE_DOUBLE_POINTS
				do
					create {TYPE_DOUBLE_POINTS} Result.make
				end)
			check attached {TYPE_DOUBLE_POINTS} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent: IMAGES_FACTORY
				do
					create {IMAGES_FACTORY} Result.make
				end)
			check attached {IMAGES_FACTORY} last_object as l_ot2 then
				v_3 := l_ot2
			end
			execute_safe (agent v_3.image_bloc_bleu_double_points)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot3 then
				v_4 := l_ot3
			end
			execute_safe (agent: AFFICHAGE_INSTRUCTIONS
				do
					create {AFFICHAGE_INSTRUCTIONS} Result.make
				end)
			check attached {AFFICHAGE_INSTRUCTIONS} last_object as l_ot4 then
				v_5 := l_ot4
			end
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot5 then
				v_6 := l_ot5
			end
			execute_safe (agent v_6.generer_liste_types_probabilites)

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: APPLICATION
				do
					create {APPLICATION} Result.make
				end)
			check attached {APPLICATION} last_object as l_ot6 then
				v_7 := l_ot6
			end
		end

end

