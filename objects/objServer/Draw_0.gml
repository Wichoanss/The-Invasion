var all_players = ds_list_size(total_players);

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_text(room_width/2, room_height/2, "Connected Players: " + string(all_players));