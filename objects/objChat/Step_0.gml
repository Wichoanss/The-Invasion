//DISCULPEN QUE HAGA ESTO, PERO SINO NO ME CORRE EL JUEGO XD
instance_destroy();
/*
if (keyboard_check_released(vk_tab)) {
	focus = !focus;
	text = "";
	keyboard_string = "";
}



if (focus) {
	text = keyboard_string;
	
	if (keyboard_check_released(vk_enter) && string_length(text) < max_text) {
		
		var text_buff = buffer_create(32, buffer_grow, 1);
		buffer_seek(text_buff, buffer_seek_start, 0);
		buffer_write(text_buff, buffer_u8, network.chat);
		buffer_write(text_buff, buffer_string, "[" + string(objCliente.idd) + "]: " + string(text));
		
		
		network_send_packet(objCliente.client, text_buff, buffer_tell(text_buff));
		
		buffer_delete(text_buff);
		
		text = "";
		keyboard_string = "";
		focus = !focus;
	}
}

while (ds_list_size(CHAT) > stored_messenges) {
	ds_list_delete(CHAT, 0);
}