note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_016
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{REGLES_PARTIE}.make"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: INTEGER_32
			v_4: BLOC
			v_5: REGLES_PARTIE
		do
			v_1 := Void
			v_2 := {INTEGER_32} 5
			v_3 := {INTEGER_32} -4
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_2, v_3))
			check attached {BLOC} last_object as l_ot1 then
				v_4 := l_ot1
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot2 then
				v_5 := l_ot2
			end
		end

end

