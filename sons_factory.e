note
	description: "Factory qui crée tous les sons et musiques dans l'application"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	SONS_FACTORY

inherit
	CONTROLEURS_FACTORY_SHARED

create
	make

feature {NONE} -- Initialisation

	make
			-- Constructeur de `Current'.
		do
			nb_instance.put (nb_instance.item + 1)

			controleur := controleurs_factory.controleur
			controleur_audio := controleurs_factory.controleur_audio

			controleur_audio.add_source
			source_musique:=controleur_audio.last_source
			controleur_audio.add_source
			source_sons:=controleur_audio.last_source

			-- Musiques
			create {AUDIO_SOUND_SND_FILE} musique_menu.make ("Sons/Life_of_Riley.wav")
			create {AUDIO_SOUND_SND_FILE} musique_partie.make ("Sons/Happy_Bee.wav")

			--Sons
			create {AUDIO_SOUND_SND_FILE} son_tourner.make ("Sons/Son_Tourner.wav")
			create {AUDIO_SOUND_SND_FILE} son_detruire.make ("Sons/Son_Detruire.wav")


		end

feature -- Controleurs

	controleur:GAME_LIB_CONTROLLER
		-- Controleur de la librairie de jeu

	controleur_audio: AUDIO_CONTROLLER
		-- Controleur de la librairie audio


feature -- Musiques et sons

	source_musique:AUDIO_SOURCE
		-- Source pour la musique
	source_sons: AUDIO_SOURCE
		-- Source pour les sons

	musique_menu: AUDIO_SOUND
		-- Musique qui joue dans le menu principal et la page d'instructions
	musique_partie: AUDIO_SOUND
		-- Musique qui joue durant une partie

	son_tourner: AUDIO_SOUND
		-- Son lorsque des blocs sont tournés
	son_detruire: AUDIO_SOUND
		-- Son lorsque des blocs sont détruits


feature -- Méthodes

	jouer_musique(a_musique: AUDIO_SOUND)
			-- Fait jouer la musique envoyée en boucle
		do
			source_musique.queue_sound_infinite_loop (a_musique)
			source_musique.play
			controleur.event_controller.on_iteration.extend (agent controleur_audio.update)

		end

	jouer_son(a_son: AUDIO_SOUND)
		-- Fait jouer le son envoyé une seule fois
		do
			source_sons.queue_sound (a_son)
			source_sons.play

		end

feature {NONE} -- Implémentation

	nb_instance:CELL[INTEGER]
		-- Nombre d'instance de la factory
		once
			create Result.put (0)
		end

invariant

	singleton_valide: nb_instance.item = 1

end
