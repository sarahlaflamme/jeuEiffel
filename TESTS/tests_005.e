note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_005
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{TABLEAU}.make"
		local
			v_1: detachable ANY
			v_2: INTEGER_32
			v_3: INTEGER_32
			v_4: BLOC
			v_5: IMAGES_FACTORY
			v_6: GAME_SURFACE_IMG_FILE
			v_7: TABLEAU
		do
			v_1 := Void
			v_2 := {INTEGER_32} 8
			v_3 := {INTEGER_32} -1
			execute_safe (agent (a_arg1: INTEGER_32; a_arg2: INTEGER_32): BLOC
				do
					create {BLOC} Result.make_hasard (a_arg1, a_arg2)
				end (v_2, v_3))
			check attached {BLOC} last_object as l_ot1 then
				v_4 := l_ot1
			end
			execute_safe (agent: IMAGES_FACTORY
				do
					create {IMAGES_FACTORY} Result.make
				end)
			check attached {IMAGES_FACTORY} last_object as l_ot2 then
				v_5 := l_ot2
			end
			execute_safe (agent v_5.image_bloc_rose_normal)
			check attached {GAME_SURFACE_IMG_FILE} last_object as l_ot3 then
				v_6 := l_ot3
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: TABLEAU
				do
					create {TABLEAU} Result.make
				end)
			check attached {TABLEAU} last_object as l_ot4 then
				v_7 := l_ot4
			end
		end

end

