note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_003
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{SONS_FACTORY}.make"
		local
			v_6: SONS_FACTORY
		do

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: SONS_FACTORY
				do
					create {SONS_FACTORY} Result.make
				end)
			check attached {SONS_FACTORY} last_object as l_ot1 then
				v_6 := l_ot1
			end
		end

end

