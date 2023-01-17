if (other.state == "dead"){ exit;}
if (side == "enemy") {exit;}

other.hp -= dmg;
other.state = "chasing";
objSistemaPlayer.soccer += 20;


move_contact_all(direction, 16);
var bulletCollision = instance_create_layer(x, y, "Bullets", objBulletCollision);
bulletCollision.sprite_index = collisionSprite;

instance_destroy();