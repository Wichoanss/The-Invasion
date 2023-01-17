//Client variables
port = 7676;
ip = "127.0.0.1";

network_set_config(network_config_connect_timeout, 3000);
client = network_create_socket(network_socket_tcp);
network_connect(client, ip, port);

//Create our player
instances = ds_map_create();
idd = 0;
Player = instance_create_layer(random(room_width), random(room_height), "Instances", objPlayer);
idd = Player.my_id;

ds_map_add(instances, idd, Player);


//chat
instance_create_layer(x, y, "Instances", objChat);


//Display error if unable to connect
if (client < 0){
	show_message("ERROR AL CONECTAR AL SERVIDOR");
	game_restart();
}

