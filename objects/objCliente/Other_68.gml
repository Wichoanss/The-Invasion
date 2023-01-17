/// @description Insert description here
// You can write your code in this editor
var packet = async_load[? "buffer"];
buffer_seek(packet, buffer_seek_start, 0);

var PACKET_ID = buffer_read(packet, buffer_u8);

switch (PACKET_ID) {
	case network.move:
	 var player_id = buffer_read(packet, buffer_u16);
	 var find_player = ds_map_find_value(instances, player_id);
     
	 if (is_undefined(find_player)) {
		var p = instance_create_layer(random(room_width), random(room_height),"Instances", objPlayer);
		ds_map_add(instances, player_id, p);
	 } else {
		 
			if (idd != player_id) && (instance_exists(find_player)) {
				
				var player_x = buffer_read(packet, buffer_s16);
				var player_y = buffer_read(packet, buffer_s16);
				var player_angle = buffer_read(packet, buffer_s16);
				
				
				find_player.x = player_x;
				find_player.y = player_y;
				find_player.image_angle = player_angle;
			}
	 }
	 break;

}