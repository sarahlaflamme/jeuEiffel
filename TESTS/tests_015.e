note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_015
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.set_depart_x"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: CLIENT_RESEAU
			v_4: INTEGER_32
			v_5: TABLEAU
			v_6: ZONE_TABLEAU
			v_7: INTEGER_32
			v_8: IMAGES_FACTORY
			v_9: GAME_SURFACE_IMG_FILE
			v_10: ZONE_TABLEAU
			v_11: INTEGER_32
		do
			v_1 := Void
			v_2 := {INTEGER_32} 1
			execute_safe (agent (a_arg1: INTEGER_32): CLIENT_RESEAU
				do
					create {CLIENT_RESEAU} Result.make (a_arg1)
				end (v_2))
			check attached {CLIENT_RESEAU} last_object as l_ot1 then
				v_3 := l_ot1
			end
			v_4 := {INTEGER_32} 5
			execute_safe (agent v_3.set_score (v_4))
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot2 then
				v_5 := l_ot2
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_5))
			check attached {ZONE_TABLEAU} last_object as l_ot3 then
				v_6 := l_ot3
			end
			execute_safe (agent v_6.depart_x)
			check attached {INTEGER_32} last_integer_32 as l_ot4 then
				v_7 := l_ot4
			end
			execute_safe (agent v_6.images_factory)
			check attached {IMAGES_FACTORY} last_object as l_ot5 then
				v_8 := l_ot5
			end
			execute_safe (agent v_8.image_selection_animation2)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot6 then
				v_9 := l_ot6
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_5))
			check attached {ZONE_TABLEAU} last_object as l_ot7 then
				v_10 := l_ot7
			end
			v_11 := {INTEGER_32} -4

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_10.set_depart_x (v_11))
		end

end

