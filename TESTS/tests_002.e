note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_002
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TEMPS}.make"
		local
			v_4: INTEGER_32
			v_5: ZONE_TEMPS
		do
			v_4 := {INTEGER_32} -6

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TEMPS} last_object as l_ot1 then
				v_5 := l_ot1
			end
		end

end

