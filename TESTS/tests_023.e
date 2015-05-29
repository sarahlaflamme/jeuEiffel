note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_023
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{TABLEAU}.tourner_blocs"
		local
			v_1: detachable ANY
			v_2: TABLEAU
			v_3: detachable ANY
		do
			v_1 := Void
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.sons_factory)
			v_3 := last_object

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_2.tourner_blocs (Void))
		end

end

