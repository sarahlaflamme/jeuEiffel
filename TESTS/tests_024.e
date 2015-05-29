note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_024
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_SCORE}.make"
		local
			v_2: INTEGER_32
			v_3: ZONE_SCORE
		do
			v_2 := {INTEGER_32} 4

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_SCORE
				do
					create {ZONE_SCORE} Result.make (a_arg1)
				end (v_2))
			check attached {ZONE_SCORE} last_object as l_ot1 then
				v_3 := l_ot1
			end
		end

end

