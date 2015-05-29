note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_025
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{SELECTION}.make"
		local
			v_1: detachable ANY
			v_2: AFFICHAGE_PARTIE
			v_3: SELECTION
		do
			v_1 := Void
			execute_safe (agent (a_arg1: NONE): AFFICHAGE_PARTIE
				do
					create {AFFICHAGE_PARTIE} Result.make (a_arg1)
				end (Void))
			check attached {AFFICHAGE_PARTIE} last_object as l_ot1 then
				v_2 := l_ot1
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: NONE): SELECTION
				do
					create {SELECTION} Result.make (a_arg1)
				end (Void))
			check attached {SELECTION} last_object as l_ot2 then
				v_3 := l_ot2
			end
		end

end

