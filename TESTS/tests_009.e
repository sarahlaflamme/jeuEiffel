note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_009
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{AFFICHAGE_MENU}.make"
		local
			v_12: AFFICHAGE_MENU
		do

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot1 then
				v_12 := l_ot1
			end
		end

end

