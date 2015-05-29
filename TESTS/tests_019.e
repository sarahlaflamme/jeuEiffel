note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_019
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{TABLEAU}.sons_factory"
		local
			v_2: TABLEAU
			v_3: detachable ANY
		do
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_2 := l_ot1
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_2.sons_factory)
			v_3 := last_object
		end

end

