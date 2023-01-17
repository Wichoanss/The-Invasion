draw_self();


//Armas
if	(distance_to_object(objWeapon)  <=5){
	draw_sprite_ext(sprButtonInteractuartuto,0,x,y-70,1,1,0,c_white,1);
}

//Municion
if	(distance_to_object(objMunicion)  <=3){
	draw_sprite_ext(sprButtonInteractuartuto,0,x,y-70,1,1,0,c_white,1);
}

//Botequin de salud
if	(distance_to_object(Vida)  <=3){
	draw_sprite_ext(sprButtonInteractuartuto,0,x,y-70,1,1,0,c_white,1);
}











