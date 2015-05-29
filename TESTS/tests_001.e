note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_001
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{AFFICHAGE_FIN_PARTIE}.make"
		local
			v_2: INTEGER_32
			v_3: AFFICHAGE_FIN_PARTIE
		do
			v_2 := {INTEGER_32} 3

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_2))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot1 then
				v_3 := l_ot1
			end
		end

end

