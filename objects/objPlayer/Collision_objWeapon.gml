



if (keyboard_check_pressed(ord("E")) && abs(x - other.x) <= 50) {
	with (other) {
		
objSistemaPlayer.municion = 15;		
objSistemaPlayer.municionT += 50;
		instance_destroy();
		
	}
	
	weapon = other.weapon;


}