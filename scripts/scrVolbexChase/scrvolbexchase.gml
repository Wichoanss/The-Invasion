// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrVolbexChase(){
	var dx = objPlayer.x - x;
	var dy = objPlayer.y - y;
   
   //Perseguir
   if (sign(dx) == image_xscale && abs(dx) <= 224) && abs(dy) <= 96{ //96 ; 48
	   state = "chasing";
   }else
	state = "idle";
	
	//Si hay un hueco :'v
	if place_free(x+64*sign(image_xscale), y+8)
		state = "idle";
	
//Distancia a la que te dispara
if (abs(dx) > 192){
var dir = sign(dx);
	
sprite_index = sprAlien_Mediano_Walk;
	image_xscale = dir;
//Velocidad de enemy VVV
	scrMovement(dir, 0.7, width);
   }else {
    sprite_index = sprAlien_Mediano_Idle;
	image_xscale = sign(dx);
	
	
	//ACÁ PUSE UN SISTEMA DE RECARGA CON LAS VARIABLES balas Y recarga
	if balas <=0
		recarga = room_speed*2;
	
	if recarga != 0{
		recarga --;
		balas = 5;
	}
	
	firingFrequency-= 1;
	if (firingFrequency <= 0) && recarga == 0{
		audio_play_sound(Disparo_Plasma, 0, 0);
	var flash = instance_create_layer(x + 3 * image_xscale, y - 37, "Bullets", objMuzzleFlash);
		flash.image_xscale = image_xscale;
		flash.sprite_index = sprMuzzleFlashPlasma;
		
		var bullet = instance_create_layer(x + 3 * image_xscale, y - 37, "Bullets", objBullet);
		bullet.image_xscale = image_xscale;
		bullet.hspeed *= image_xscale;
		bullet.sprite_index = sprBulletPlasma;
		bullet.collisionSprite = sprBulletCollisionPlasma;
		bullet.side = "enemy";
		balas--;		
		firingFrequency = 10;	
	} 
   }
}
