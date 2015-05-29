note
	description: "Generated tests created by AutoTest."
	author: "Testing tool"

class
	TESTS_020
	
inherit
	EQA_GENERATED_TEST_SET

feature -- Test routines

	generated_test_1
		note
			testing: "type/generated"
			testing: "covers/{PARTIE}.make"
		local
			v_1: detachable ANY
			v_2: CONTROLEURS_FACTORY
			v_3: AUDIO_CONTROLLER
			v_4: PARTIE
		do
			v_1 := Void
			execute_safe (agent: CONTROLEURS_FACTORY
				do
					create {CONTROLEURS_FACTORY} Result.make
				end)
			check attached {CONTROLEURS_FACTORY} last_object as l_ot1 then
				v_2 := l_ot1
			end
			execute_safe (agent v_2.controleur_audio)
			check attached {AUDIO_CONTROLLER} last_object as l_ot2 then
				v_3 := l_ot2
			end

				-- Final routine call
			set_is_recovery_enabled (False)
			execute_safe (agent: PARTIE
				do
					create {PARTIE} Result.make
				end)
			check attached {PARTIE} last_object as l_ot3 then
				v_4 := l_ot3
			end
		end

end

