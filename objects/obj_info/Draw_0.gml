/// @description Insert description here
// You can write your code in this editor
with(objPlayer){
	draw_text(x,y-64, "Action: "+string(action));
}


with(objEnemy){
	draw_text(x,y-64, "State: "+string(state));
	/*
	draw_text(x,y-64, "Balas: "+string(balas));
	draw_text(x,y-80, "Recarga: "+string(recarga));
	draw_text(x,y-96, "Frecuencia: "+string(firingFrequency));
	
	*/
	//draw collision mask
	draw_circle_color(x,y,2,c_red,c_black, false);
	
	//Caminar
	draw_circle_color(x+dir*0.7*width/3,y,2,c_lime,c_lime, false);
//	draw_circle_color(x-dir*0.7*width/3,y,2,c_lime,c_lime, false);
	
	//Gravedad
	draw_circle_color(x+dir*0.7*width/8,y,2,c_green,c_green, false);
	draw_circle_color(x-dir*0.7*width/8,y,2,c_green,c_green, false);
	
	//Saltar
	draw_circle_color(x+dir*0.7*width/3,y-8,2,c_red,c_red, false);
	
	//Seguir
	draw_circle_color(x+224*sign(image_xscale),y,2,c_blue,c_blue, false);
	
	//Disparar
	draw_circle_color(x+192*sign(image_xscale),y,2,c_olive,c_olive, false);
	
	//Hueco
	draw_circle_color(x+64*sign(image_xscale),y+8,2,c_aqua,c_aqua, false);
	
draw_rectangle_color(x-sprite_xoffset,
	y-sprite_yoffset,
	x+sprite_width-sprite_xoffset,
	y+sprite_height-sprite_yoffset,
	c_white,
	c_white,
	c_white,
	c_white,
	true);
	/*
draw_rectangle_color(bbox_left,
	bbox_top,
	bbox_right,
	bbox_bottom,
	c_white,
	c_white,
	c_white,
	c_white,
	false);*/
}





