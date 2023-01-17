/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_middle);


if (focus) {
draw_rectangle(16, room_height/2-8, 232, room_height/2+8, true);
draw_text(20, room_height/2, string(text) + cursor);

} else {
	draw_text(16, room_height/2-8, "PRESIONA TAB PARA ABRIR CHAT.");
	
}


var yy = 64;


for (var i = 0; i < ds_list_size(CHAT); i++) {
draw_text_ext(16, yy, ds_list_find_value(CHAT, i), -1, max_text);
yy += 16;
}