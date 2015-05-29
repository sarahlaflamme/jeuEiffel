note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_010
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{GAME_SURFACE}.make"
		local
			v_4: INTEGER_32
			v_5: INTEGER_32
			v_6: GAME_SURFACE
		do
			v_4 := {INTEGER_32} 4
			v_5 := {INTEGER_32} -3

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): GAME_SURFACE
				do
					create {GAME_SURFACE} Result.make (a_arg1, a_arg2)
				end (v_4, v_5))
			check attached {GAME_SURFACE} last_object as l_ot1 then
				v_6 := l_ot1
			end
		end

end

