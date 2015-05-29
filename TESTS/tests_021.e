note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_021
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{TABLEAU}.verifier_blocs_autour"
		local
			v_1: detachable ANY
			v_3: TABLEAU
			v_4: detachable ANY
		do
			v_1 := Void
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_3 := l_ot1
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_3.verifier_blocs_autour (Void))
			v_4 := last_object
		end

end

