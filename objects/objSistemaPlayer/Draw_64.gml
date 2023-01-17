/*EN ESTE CODIGO, SI LAS VIDAS DEL JUGADOR LLEGAN MENOR QUE 0 ENTONCES EN EL JUEGO SE DESTRUIRAN LAS INSTANCIAS U OBJETOS
Y APARECERA UN FONDO AZUL DONDE PONGA QUE HAS MUERTO Y AL PULSAR EL BOTON DE INTERACTUAR O EL BOTNO "E" EL JUEGO SE REINICIARA. */
if (global.vidas < 0){
	
	
	instance_destroy(objPlayer);
	instance_destroy(objEnemy);
	instance_destroy(objPause);
	instance_destroy(objHPB);
	
	
	

	draw_set_color(c_blue);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,room_width/2,room_height/2,false);
    draw_sprite_ext(sprMenu,0,room_width,room_height,0,0,0,c_blue,1);
	draw_set_alpha(1);
	draw_set_color(c_white);
	
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(250,100,"HAS MUERTO");
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_text(185,40,"THE INVASION");
	
	if keyboard_check_pressed(ord("E")) {
		
	game_restart();
	}
}