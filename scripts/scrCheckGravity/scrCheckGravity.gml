function scrCheckGravity(width, height){
	if object_index != objPlayer
		width /= 8;
	if (!collision_rectangle(x-width,floor(y),x+width,ceil(y),objWall,true,true) || vspeed != 0) {
		if id != objForton
			gravity = 0.3;
		else
			gravity = 0.6;
		action = "Jump";
	}
	if (vspeed > 0) {
		scrCheckGroundCollision(width);
	} else if (vspeed < 0) {
		scrCheckCeilingCollision(width, height);
	}
}