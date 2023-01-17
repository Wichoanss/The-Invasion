function scrEnemyChase(){
var dx = objPlayer.x - x;
if (abs(dx) > 100){
var dir = sign(dx);
	
sprite_index = sprGruntWalk;
	image_xscale = dir;
//Velocidad de enemy VVV
	scrMovement(dir, 0.7, width);
   }else {
    sprite_index = sprGruntIdle;
	image_xscale = sign(dx);
	if balas <=0
		recarga = room_speed*10;
	/*
	if recarga != 0{
		recarga --;
		balas = 5;
	}*/
	
	firingFrequency-= 1;
	if (firingFrequency <= 0) && recarga == 0{
	var flash = instance_create_layer(x + 30 * image_xscale, y - 18, "Bullets", objMuzzleFlash);
		flash.image_xscale = image_xscale;
		flash.sprite_index = sprMuzzleFlashPlasma;
		
		var bullet = instance_create_layer(x + 30 * image_xscale, y - 18, "Bullets", objBullet);
		bullet.image_xscale = image_xscale;
		bullet.hspeed *= image_xscale;
		bullet.sprite_index = sprBulletPlasma;
		bullet.collisionSprite = sprBulletCollisionPlasma;
		bullet.side = "enemy";
		firingFrequency = 40; //40
		balas -=1;
	} 
   }
}