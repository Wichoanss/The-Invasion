function scrMovement(hor, spd, width){
	var xTo = x + hor * spd;
	var moved = false;
	if object_index != objPlayer
		width /= 3;
	if object_index != objPlayer
		if !place_free(x+dir*0.7*width, y-8) && vspeed == 0{ //(sprite_width+8)	
			vspeed = -5;
		//else
			//vspeed = -7;
	}
	
	for (var i=1;i<4;i++) {
		var wall = collision_rectangle(xTo+width*sign(hor), y-i-1, xTo, y-i, objWall, true, true);
		if (!wall || !wall.solid) {
			x = xTo;
			moved = true;
			if (vspeed == 0) {
				y -= i - 1;
			}
			break;
		}
	}
	
	if (vspeed == 0 && moved) {
		for (var i=1;i<4;i++) {
			var wall = collision_rectangle(xTo+width*sign(hor), y+i-1, xTo, y+i, objRamp, true, true);
			if (wall) {
				y += i;
				break;
			}
		}
	}
	image_xscale = hor;
}