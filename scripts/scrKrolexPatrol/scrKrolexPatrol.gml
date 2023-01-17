function scrKrolexPatrol(){
if (wait <= 0) {
	sprite_index = sprKrolexWalk;
	image_xscale = dir;
//Velocidad de enemy VVV
	scrMovement(dir, 0.7, width);

	if (dir == 1 && x >= x2) {
		dir = -1;
		sprite_index = sprKrolexIdle;
		wait = room_speed * 3;
	} else if (dir == -1 && x <= x1) {
		dir = 1;
		sprite_index = sprKrolexIdle;
		wait = room_speed * 3;
	}
} else {
	wait -= 1;
}
}