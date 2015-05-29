note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_007
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.make"
		local
			v_1: detachable ANY
			v_2: ZONE_TABLEAU
		do
			v_1 := Void

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: NONE): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (Void))
			check attached {ZONE_TABLEAU} last_object as l_ot1 then
				v_2 := l_ot1
			end
		end

end

