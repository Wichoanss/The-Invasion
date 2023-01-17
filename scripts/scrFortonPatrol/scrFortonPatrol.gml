// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrFortonPatrol(){
if (wait <= 0) {
	sprite_index = sprFortonWalk;
	image_xscale = dir;
//Velocidad de enemy VVV
	scrMovement(dir, 0.7, width);

	if (dir == 1 && x >= x2) {
		dir = -1;
		sprite_index = sprFortonIdle;
		wait = room_speed * 3;
	} else if (dir == -1 && x <= x1) {
		dir = 1;
		sprite_index = sprFortonIdle;
		wait = room_speed * 3;
	}
} else {
	wait -= 1;
}
}