function scrEliteChase(){
var dx = objPlayer.x - x;
if (abs(dx) > 100){
var dir = sign(dx);
	
sprite_index = sprEliteWalk;
	image_xscale = dir;
//Velocidad de enemy VVV
	scrMovement(dir, 0.7, width);
   }else {
    sprite_index = sprEliteIdle;
	image_xscale = sign(dx);
	
	firingFrequency-= 1;
	if (firingFrequency <= 0){
	var flash = instance_create_layer(x + 20 * image_xscale, y - 28, "Bullets", objMuzzleFlash);
		flash.image_xscale = image_xscale;
		flash.sprite_index = sprMuzzleFlashPlasma;
		
		var bullet = instance_create_layer(x + 20 * image_xscale, y - 28, "Bullets", objBullet);
		bullet.image_xscale = image_xscale;
		bullet.hspeed *= image_xscale;
		bullet.sprite_index = sprBulletPlasma;
		bullet.collisionSprite = sprBulletCollisionPlasma;
		bullet.side = "enemy";
		
		firingFrequency = 20;	
	} 
   }
}