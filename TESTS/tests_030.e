note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_030
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{ZONE_TABLEAU}.dessiner"
		local
			v_4: TABLEAU
			v_13: ZONE_TABLEAU
			v_14: detachable ANY
		do
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot1 then
				v_4 := l_ot1
			end
			execute_safe (agent (a_arg1: TABLEAU): ZONE_TABLEAU
				do
					create {ZONE_TABLEAU} Result.make (a_arg1)
				end (v_4))
			check attached {ZONE_TABLEAU} last_object as l_ot2 then
				v_13 := l_ot2
			end
			execute_safe (agent v_13.controleurs_factory)
			v_14 := last_object

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent v_13.dessiner)
		end

end

