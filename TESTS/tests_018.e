note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_018
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{TABLEAU}.tourner_blocs"
		local
			v_5: TABLEAU
			v_6: INTEGER_32
			v_7: INTEGER_32
			v_8: BLOC
		do
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_5 := l_ot1
			end
			v_6 := {INTEGER_32} 3
			v_7 := {INTEGER_32} 8
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_6, v_7))
			check attached {BLOC} last_object as l_ot2 then
				v_8 := l_ot2
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_5.tourner_blocs (v_8))
		end

end

