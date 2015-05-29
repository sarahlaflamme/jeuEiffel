note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_004
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{IMAGES_FACTORY}.make"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: AFFICHAGE_FIN_PARTIE
			v_4: INTEGER_32
			v_5: ZONE_TEMPS
			v_6: SONS_FACTORY
			v_7: PARTIE
			v_8: SELECTION
			v_9: IMAGES_FACTORY
		do
			v_1 := Void
			v_2 := {INTEGER_32} 3
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_2))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot1 then
				v_3 := l_ot1
			end
			v_4 := {INTEGER_32} -6
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TEMPS} last_object as l_ot2 then
				v_5 := l_ot2
			end
			execute_safe (agent: SONS_FACTORY
				do
					create {SONS_FACTORY} Result.make
				end)
			check attached {SONS_FACTORY} last_object as l_ot3 then
				v_6 := l_ot3
			end
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot4 then
				v_7 := l_ot4
			end
			execute_safe (agent v_7.selection)
			check attached {SELECTION} last_object as l_ot5 then
				v_8 := l_ot5
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: IMAGES_FACTORY
				do
					create {IMAGES_FACTORY} Result.make
				end)
			check attached {IMAGES_FACTORY} last_object as l_ot6 then
				v_9 := l_ot6
			end
		end

end

