note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_027
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.set_depart_y"
		local
			v_1: detachable ANY
			v_2: TABLEAU
			v_3: ZONE_TABLEAU
			v_4: INTEGER_32
		do
			v_1 := Void
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_2))
			check attached {ZONE_TABLEAU} last_object as l_ot2 then
				v_3 := l_ot2
			end
			v_4 := {INTEGER_32} -6

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_3.set_depart_y (v_4))
		end

end

