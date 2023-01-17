//pause = !pause;

//if (pause){
//	audio_pause_all();
//}
//else {
//surface_free(pauseSurface);
//instance_activate_all();
//audio_resume_all();



//}
ini_open("WALKER.ini");
ini_write_string("Variables","Arma",objPlayer.weapon);
ini_write_real("Variables","Vida",objSistemaPlayer.playerHP);
ini_write_real("Variables","Score",objSistemaPlayer.soccer);
ini_write_real("Variables","Municion",objSistemaPlayer.municion);
ini_write_real("Variables","Muertes",objSistemaPlayer.muertes);
ini_write_real("Variables","Vidas",global.vidas);
ini_write_real("Variables","MunicionT",objSistemaPlayer.municionT);
ini_write_real("Variables","Radiacion",objSistemaPlayer.radiacion);
ini_write_real("Variables","PosicionX",objPlayer.x);
ini_write_real("Variables","PosicionY",objPlayer.y);
ini_close();
room_goto(MISIONES);

