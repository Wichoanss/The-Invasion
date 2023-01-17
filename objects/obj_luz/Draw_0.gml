/// @description Insert description here
// You can write your code in this editor
if (!surface_exists(identificador))
{
	identificador = surface_create(room_width, room_height);
}

surface_set_target(identificador);

draw_set_color(c_black);
	draw_set_alpha(0.1);
	draw_rectangle(0,0,room_width,room_height,false);
    draw_sprite_ext(sprMenu,0,room_width,room_height,0,0,0,c_blue,1);
	draw_set_alpha(1);
	draw_set_color(c_white);

#region LUZ
gpu_set_blendmode(bm_subtract);
#region LAMPARAS
if(instance_exists(objLuces_Pre))
{
	var luz;
	for (var xx = 0; xx < instance_number(objLuces_Pre); xx++)
	{
		luz = instance_find(objLuces_Pre,xx);
		draw_sprite(sprIluminacion_Tinteado,-1, luz.x, luz.y);
	}
}
#endregion
#region PERSONAJE
if (instance_exists(objPlayer) and (objPlayer.linterna == true ))
{
	draw_sprite(sprIluminacion,-1,objPlayer.x, objPlayer.y -20);	
}
#endregion
gpu_set_blendmode(bm_normal);
#endregion
 
surface_reset_target();

draw_surface(identificador,0,0);