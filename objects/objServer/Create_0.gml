port = 7676;
max_players = 8;

server = network_create_server(network_socket_tcp, port, max_players);
total_players = ds_list_create();


if (server < 0){
	show_message("ERROR AL CREAR SERVIDOR");
	game_restart();
}
