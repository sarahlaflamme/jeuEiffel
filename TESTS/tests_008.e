note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_008
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{AFFICHAGE_PARTIE}.make"
		local
			v_10: PARTIE
			v_11: AFFICHAGE_PARTIE
		do
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot1 then
				v_10 := l_ot1
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: PARTIE): AFFICHAGE_PARTIE
				do
					create {AFFICHAGE_PARTIE} Result.make (a_arg1)
				end (v_10))
			check attached {AFFICHAGE_PARTIE} last_object as l_ot2 then
				v_11 := l_ot2
			end
		end

end

