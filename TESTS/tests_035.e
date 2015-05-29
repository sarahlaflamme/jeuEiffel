note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_035
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{SELECTION}.make"
		local
			v_1: detachable ANY
			v_2: REGLES_PARTIE
			v_3: INTEGER_32
			v_4: INTEGER_32
			v_5: BLOC
			v_6: AFFICHAGE_INSTRUCTIONS
			v_7: INTEGER_32
			v_8: ZONE_SCORE
			v_9: AFFICHAGE_MENU
			v_10: INTEGER_32
			v_11: SELECTION
		do
			v_1 := Void
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.set_liste_couleurs (Void))
			v_3 := {INTEGER_32} -1
			v_4 := {INTEGER_32} -5
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_3, v_4))
			check attached {BLOC} last_object as l_ot2 then
				v_5 := l_ot2
			end
			execute_safe (agent: AFFICHAGE_INSTRUCTIONS
				do
					create {AFFICHAGE_INSTRUCTIONS} Result.make
				end)
			check attached {AFFICHAGE_INSTRUCTIONS} last_object as l_ot3 then
				v_6 := l_ot3
			end
			v_7 := {INTEGER_32} 8
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_SCORE
				do
					create {ZONE_SCORE} Result.make (a_arg1)
				end (v_7))
			check attached {ZONE_SCORE} last_object as l_ot4 then
				v_8 := l_ot4
			end
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot5 then
				v_9 := l_ot5
			end
			execute_safe (agent v_2.nb_temps_bonus)
			check attached {INTEGER_32} last_integer_32 as l_ot6 then
				v_10 := l_ot6
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent (a_arg1: NONE): SELECTION
				do
					create {SELECTION} Result.make (a_arg1)
				end (Void))
			check attached {SELECTION} last_object as l_ot7 then
				v_11 := l_ot7
			end
		end

end

