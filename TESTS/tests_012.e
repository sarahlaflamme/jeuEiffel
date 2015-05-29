note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_012
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{AFFICHAGE_INSTRUCTIONS}.make"
		local
			v_7: AFFICHAGE_INSTRUCTIONS
		do

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: AFFICHAGE_INSTRUCTIONS
				do
					create {AFFICHAGE_INSTRUCTIONS} Result.make
				end)
			check attached {AFFICHAGE_INSTRUCTIONS} last_object as l_ot1 then
				v_7 := l_ot1
			end
		end

end

