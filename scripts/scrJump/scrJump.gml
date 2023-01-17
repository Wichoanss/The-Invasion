function scrJump(width){
	if (collision_rectangle(x-width,y,x+width,y+1,objWall,false,false) && vspeed == 0){
		if salto == 0{
			vspeed = -5.4;
			salto = 1;
		}
	}else if salto == 1{
			vspeed = -3;
			salto = 2;
	}
}