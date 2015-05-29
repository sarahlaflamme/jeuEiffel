note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_011
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{CONTROLEURS_FACTORY}.make"
		local
			v_1: detachable ANY
			v_2: REGLES_PARTIE
			v_3: ARRAYED_LIST [COULEUR]
			v_4: INTEGER_32
			v_5: INTEGER_32
			v_6: GAME_SURFACE
			v_7: INTEGER_32
			v_8: AFFICHAGE_FIN_PARTIE
			v_9: INTEGER_32
			v_10: ZONE_TEMPS
			v_11: INTEGER_32
			v_12: AFFICHAGE_FIN_PARTIE
			v_13: INTEGER_32
			v_14: INTEGER_32
			v_15: INTEGER_32
			v_16: BOOLEAN
			v_17: GAME_SURFACE
			v_18: INTEGER_32
			v_19: INTEGER_32
			v_20: BOUTON
			v_21: INTEGER_32
			v_22: AFFICHAGE_FIN_PARTIE
			v_23: CONTROLEURS_FACTORY
		do
			v_1 := Void
			execute_safe (agent: REGLES_PARTIE
				do
					create {REGLES_PARTIE} Result.make
				end)
			check attached {REGLES_PARTIE} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.liste_couleurs)
			check attached {ARRAYED_LIST [COULEUR]} last_object as l_ot2 then
				v_3 := l_ot2
			end
			v_4 := {INTEGER_32} 4
			v_5 := {INTEGER_32} -3
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): GAME_SURFACE
				do
					create {GAME_SURFACE} Result.make (a_arg1, a_arg2)
				end (v_4, v_5))
			check attached {GAME_SURFACE} last_object as l_ot3 then
				v_6 := l_ot3
			end
			v_7 := {INTEGER_32} 8
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_7))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot4 then
				v_8 := l_ot4
			end
			v_9 := {INTEGER_32} 8
			execute_safe (agent (a_arg1: INTEGER_32): ZONE_TEMPS
				do
					create {ZONE_TEMPS} Result.make (a_arg1)
				end (v_9))
			check attached {ZONE_TEMPS} last_object as l_ot5 then
				v_10 := l_ot5
			end
			v_11 := {INTEGER_32} 6
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_11))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot6 then
				v_12 := l_ot6
			end
			v_13 := {INTEGER_32} 7
			v_14 := {INTEGER_32} 9
			v_15 := {INTEGER_32} -4
			v_16 := True
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32; a_arg3: INTEGER_32; a_arg4: BOOLEAN): GAME_SURFACE
				do
					create {GAME_SURFACE} Result.make_with_bit_per_pixel (a_arg1, a_arg2, a_arg3, a_arg4)
				end (v_13, v_14, v_15, v_16))
			check attached {GAME_SURFACE} last_object as l_ot7 then
				v_17 := l_ot7
			end
			v_18 := {INTEGER_32} 1
			v_19 := {INTEGER_32} 0
			execute_safe (agent (a_arg1: NONE; a_arg2: GAME_SURFACE; a_arg3: INTEGER_32; a_arg4: INTEGER_32): BOUTON
				do
					create {BOUTON} Result.make (a_arg1, a_arg2, a_arg3, a_arg4)
				end (Void, v_17, v_18, v_19))
			check attached {BOUTON} last_object as l_ot8 then
				v_20 := l_ot8
			end
			v_21 := {INTEGER_32} -1
			execute_safe (agent (a_arg1: INTEGER_32): AFFICHAGE_FIN_PARTIE
				do
					create {AFFICHAGE_FIN_PARTIE} Result.make (a_arg1)
				end (v_21))
			check attached {AFFICHAGE_FIN_PARTIE} last_object as l_ot9 then
				v_22 := l_ot9
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: CONTROLEURS_FACTORY
				do
					create {CONTROLEURS_FACTORY} Result.make
				end)
			check attached {CONTROLEURS_FACTORY} last_object as l_ot10 then
				v_23 := l_ot10
			end
		end

end

