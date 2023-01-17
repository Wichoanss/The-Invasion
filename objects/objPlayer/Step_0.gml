//GACHADO
if (keyboard_check(ord("S")) && vspeed == 0) 
		action = "Gachado";
	else
		action = "Idle";


#region Movimiento Horizontal
	var hor = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	
	if keyboard_check(ord("N")) {
	vel=3;
	}else{vel=2;}
	
	
		if (hor != 0) {
			image_xscale = hor;
			if action != "Gachado"{
				scrMovement(sign(hor), vel, width);
				action = "Walk";
			}
		} else if (vspeed == 0) {
			if action != "Gachado"
				action = "Idle";
		}
#endregion

#region Salto
	if (keyboard_check_pressed(vk_space)) && action != "Gachado"{
		scrJump(width);
	}
#endregion

#region Dispararif 
	firingFrequency -= 1;	
	//municion -= 1;
	if (keyboard_check(ord("F")) && weapon != "NW" && firingFrequency <=0 && objSistemaPlayer.municion >0) {
		audio_play_sound(Pistola, 0, 0);
		
		//Disparar agachado
		if !(keyboard_check(ord("S"))) {
			var flash = instance_create_layer(x + 22 * image_xscale, y - 33, "Bullets", objMuzzleFlash);
			flash.image_xscale = image_xscale;
			
			objSistemaPlayer.municion -= 1;
		
			var bullet = instance_create_layer(x + 20 * image_xscale, y - 32, "Bullets", objBullet);
			bullet.image_xscale = image_xscale;
			bullet.hspeed *= image_xscale;
		}else{
			var flash = instance_create_layer(x + 19 * image_xscale, y-21, "Bullets", objMuzzleFlash);
			flash.image_xscale = image_xscale;
			
			objSistemaPlayer.municion -= 1;
		
			var bullet = instance_create_layer(x + 19 * image_xscale, y-20, "Bullets", objBullet);
			bullet.image_xscale = image_xscale;
			bullet.hspeed *= image_xscale;
		
		}
	
firingFrequency = 10;

	}
#endregion
	
//RECARGAR
if (keyboard_check_pressed(ord("R"))){
	objSistemaPlayer.municionT+=objSistemaPlayer.municion;
	objSistemaPlayer.municion = 0;
	if (objSistemaPlayer.municionT > 0){
		if (objSistemaPlayer.municionT >= 15){
			objSistemaPlayer.municion = 15;
			objSistemaPlayer.municionT -= 15;
		}else{
			objSistemaPlayer.municion = objSistemaPlayer.municionT;
			objSistemaPlayer.municionT = 0;
		}
	}
}
#region Vida 
//if vidaPlayer<0{room_goto(Game_Over_1)}
#endregion

	if (objSistemaPlayer.playerHP <= 0){
	sprite_index = DeathSprite;	
action = "Death";
room_speed = 10;
	}
		

		
	

		
		
		
		
		
		
		

		
		
		
		
		
		
		
	