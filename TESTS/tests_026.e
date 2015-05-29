note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_026
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{COULEUR}.make"
		local
			v_1: detachable ANY
			v_2: COULEUR
		do
			v_1 := Void

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: NONE): COULEUR
				do
					create {COULEUR} Result.make (a_arg1)
				end (Void))
			check attached {COULEUR} last_object as l_ot1 then
				v_2 := l_ot1
			end
		end

end

