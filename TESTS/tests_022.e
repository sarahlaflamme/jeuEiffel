note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_022
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.make"
		local
			v_1: detachable ANY
			v_2: REGLES_PARTIE
			v_3: INTEGER_32
			v_4: ZONE_TABLEAU
		do
			v_1 := Void
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.nb_temps_bonus)
			check attached {INTEGER_32} last_integer_32 as l_ot2 then
				v_3 := l_ot2
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: NONE): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (Void))
			check attached {ZONE_TABLEAU} last_object as l_ot3 then
				v_4 := l_ot3
			end
		end

end

