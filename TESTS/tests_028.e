note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_028
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{PARTIE}.make"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: INTEGER_32
			v_4: BOUTON
			v_5: REGLES_PARTIE
			v_6: INTEGER_32
			v_7: SONS_FACTORY
			v_8: AFFICHAGE_MENU
			v_9: INTEGER_32
			v_10: INTEGER_32
			v_11: BLOC
			v_12: AFFICHAGE_INSTRUCTIONS
			v_13: SONS_FACTORY
			v_14: PARTIE
		do
			v_1 := Void
			v_2 := {INTEGER_32} -4
			v_3 := {INTEGER_32} -1
			execute_safe (agent (a_arg1: NONE; a_arg2: NONE; a_arg3: INTEGER_32; a_arg4: INTEGER_32): BOUTON
				do
					create {BOUTON} Result.make (a_arg1, a_arg2, a_arg3, a_arg4)
				end (Void, Void, v_2, v_3))
			check attached {BOUTON} last_object as l_ot1 then
				v_4 := l_ot1
			end
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot2 then
				v_5 := l_ot2
			end
			execute_safe (agent v_5.duree_partie)
			check attached {INTEGER_32} last_integer_32 as l_ot3 then
				v_6 := l_ot3
			end
			execute_safe (agent: SONS_FACTORY
				do
					create {SONS_FACTORY} Result.make
				end)
			check attached {SONS_FACTORY} last_object as l_ot4 then
				v_7 := l_ot4
			end
			execute_safe (agent: AFFICHAGE_MENU
				do
					create {AFFICHAGE_MENU} Result.make
				end)
			check attached {AFFICHAGE_MENU} last_object as l_ot5 then
				v_8 := l_ot5
			end
			v_9 := {INTEGER_32} -3
			v_10 := {INTEGER_32} -2
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_9, v_10))
			check attached {BLOC} last_object as l_ot6 then
				v_11 := l_ot6
			end
			execute_safe (agent: AFFICHAGE_INSTRUCTIONS
				do
					create {AFFICHAGE_INSTRUCTIONS} Result.make
				end)
			check attached {AFFICHAGE_INSTRUCTIONS} last_object as l_ot7 then
				v_12 := l_ot7
			end
			execute_safe (agent: SONS_FACTORY
				do
					create {SONS_FACTORY} Result.make
				end)
			check attached {SONS_FACTORY} last_object as l_ot8 then
				v_13 := l_ot8
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot9 then
				v_14 := l_ot9
			end
		end

end

