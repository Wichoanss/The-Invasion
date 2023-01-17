//DISCULPEN QUE HAGA ESTO, PERO SINO NO ME CORRE EL JUEGO XD
/*
function server_data(){
	var packet = async_load[? "buffer"];
buffer_seek(packet, buffer_seek_start, 0);

var PACKET_ID = buffer_read(packet, buffer_u8);

switch (PACKET_ID) {
	
	#region Movimiento online

	
	case network.move:
		var player_id =       buffer_read(packet, buffer_u16);
		var player_x =		  buffer_read(packet, buffer_u16);
		var player_y =        buffer_read(packet, buffer_u16);
		var player_angle =    buffer_read(packet, buffer_u16);
		
		
		var buff = buffer_create(32, buffer_grow, 1);
		buffer_seek(buff, buffer_seek_start, 0);
		buffer_write(buff,buffer_u8, network.move);
		buffer_write(buff, buffer_u16, player_id);
		buffer_write(buff, buffer_u16, player_x);
		buffer_write(buff, buffer_u16, player_y);
		buffer_write(buff, buffer_u16, player_angle);
		
		for (var i = 0; i < ds_list_size(total_players); i++) {
			network_send_packet(ds_list_find_value(total_players, i), buff, buffer_tell(buff));
		}
		buffer_delete(buff);
		break;
	}
	#endregion
	
	#region Chat
	case network.chat:
	
	var text_messagee = buffer_read(packet, buffer_string);
	
	var tbuff = buffer_create(32, buffer_grow, 1);
	buffer_seek(tbuff, buffer_seek_start, 0);
	buffer_write(tbuff, buffer_u8, network.chat);
	buffer_write(tbuff, buffer_string, text_message);
	
	for (var i = 0; i < ds_list_size(total_players); i++) {
	network_send_packet(ds_list_find_value(total_players, i), tbuff, buffer_tell(tbuff));	
	}
	
	buffer_delete(tbuff);
	break;
	#endregion
	
}

	
	
}