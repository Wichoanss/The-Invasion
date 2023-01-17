if (keyboard_check_pressed(ord("E"))){
objSistemaPlayer.playerHP += 1000;
objSistemaPlayer.radiacion -= 3;
instance_destroy();
}