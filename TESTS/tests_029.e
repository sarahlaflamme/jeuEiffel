note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_029
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{PARTIE}.make"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: ZONE_SCORE
			v_4: IMAGES_FACTORY
			v_5: GAME_SURFACE_IMG_FILE
			v_6: GAME_SURFACE_IMG_FILE
			v_7: PARTIE
		do
			v_1 := Void
			v_2 := {INTEGER_32} 5
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_SCORE
				do
					create {ZONE_SCORE} Result.make (a_arg1)
				end (v_2))
			check attached {ZONE_SCORE} last_object as l_ot1 then
				v_3 := l_ot1
			end
			execute_safe (agent: IMAGES_FACTORY
				do
					create {IMAGES_FACTORY} Result.make
				end)
			check attached {IMAGES_FACTORY} last_object as l_ot2 then
				v_4 := l_ot2
			end
			execute_safe (agent v_4.image_bloc_mauve_temps_bonus)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot3 then
				v_5 := l_ot3
			end
			execute_safe (agent v_4.image_bouton_instructions_hover)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot4 then
				v_6 := l_ot4
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot5 then
				v_7 := l_ot5
			end
		end

end

