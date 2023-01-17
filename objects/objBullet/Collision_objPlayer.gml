
if (side == "player") {exit;}
if (objPlayer.escudo=true){
objBullet.dmg=0;
}else{objBullet.dmg=1;}


objSistemaPlayer.playerHP -= dmg;
objSistemaPlayer.radiacion += 1;

move_contact_all(direction, 16);
var bulletCollision = instance_create_layer(x, y, "Bullets", objBulletCollision);
bulletCollision.sprite_index = collisionSprite;
instance_destroy();