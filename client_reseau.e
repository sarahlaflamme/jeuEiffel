note
	description: "Client se connectant au serveur pour envoyer le score d'une partie"
	author: "Sarah Laflamme"
	date: "$Date$"

class
	CLIENT_RESEAU

create
	make

feature {NONE} -- Initialization

	make(a_score: INTEGER)
			-- Constructeur du client.
		do
			set_score(a_score)
			create factory_adresse
			set_string_adresse("localhost")
			set_port(12345)

			se_connecter
		end

feature -- Attributs

	factory_adresse: INET_ADDRESS_FACTORY
		-- Factory d'adresses

	adresse: INET_ADDRESS
		-- Adresse IP

	string_adresse: STRING
		-- String représentant l'adresse

	socket: NETWORK_STREAM_SOCKET
		-- Socket

	port: INTEGER
		-- Numéro de port

	date_heure: DATE_TIME
		-- Date à envoyer au serveur

	score: INTEGER
		-- Score à envoyer au serveur

	resultat: STRING
		-- String représentant le résultat (date et score) à envoyer

	connection_reussie: BOOLEAN
		-- Indique si la connection avec le serveur a été réussie


feature -- Setters

	set_port(a_port : INTEGER)
		-- Assigne la valeur au port
		do
			port := a_port
		end

	set_string_adresse(a_string_adresse : STRING)
		-- Assigne la valeur à string_adresse
		do
			string_adresse := a_string_adresse
		end

	set_score(a_score : INTEGER)
		-- Assigne la valeur au score
		do
			score := a_score
		end

	set_resultat(a_resultat : STRING)
		-- Assigne la valeur au résultat
		do
			resultat := a_resultat
		end

	set_connection_reussie(a_connection_reussie : BOOLEAN)
		-- Assigne la valeur à connection_reussie
		do
			connection_reussie := a_connection_reussie
		end


feature -- Méthodes

	se_connecter
		-- Tentative de connection au serveur
		do
			adresse:= factory_adresse.create_from_name (string_adresse)
			if adresse = Void then
				io.put_string ("Erreur: Adresse " + string_adresse + " non reconnue.%N")
			else
				create socket.make_client_by_address_and_port (adresse, port)
				if socket.invalid_address then
					io.put_string ("N'a pas pu se connecter a l'adresse " + string_adresse + ":" + port.out+".%N")
				else
					socket.connect
					if not socket.is_connected then
						set_connection_reussie(false)
						--io.put_string ("La connection au serveur a échoué.%N")
					else
						set_connection_reussie(true)
						envoyer_resultat
					end
				end
			end
		end


	envoyer_resultat
		-- Envoie le résultat formatté au serveur
		do
			create date_heure.make_now
			set_resultat(date_heure.formatted_out ("[0]dd mmm yyyy") + " (" + date_heure.formatted_out ("hh:mi") + ") : " + score.out + " points%N")
			socket.put_string (resultat)
			socket.close
		end

end

