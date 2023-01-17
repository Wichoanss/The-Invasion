function scrCheckCeilingCollision(width, height){
	var ceiling = collision_rectangle(x-width,y-height,x+width,y-height+vspeed,objWall,false,false);
	if (ceiling && ceiling.oneSided == false) {
		y = ceiling.y + ceiling.sprite_height + height;
		vspeed = 0;
		salto = 0;
	}
}