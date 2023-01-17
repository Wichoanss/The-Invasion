/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

ini_open("WALKER.ini");
ini_write_string("Variables","Arma",objPlayer.weapon);
ini_write_real("Variables","Vida",objSistemaPlayer.playerHP);
ini_write_real("Variables","Score",objSistemaPlayer.soccer);
ini_write_real("Variables","Municion",objSistemaPlayer.municion);
ini_write_real("Variables","Muertes",objSistemaPlayer.muertes);
ini_write_real("Variables","Vidas",global.vidas);
ini_write_real("Variables","MunicionT",objSistemaPlayer.municionT);
ini_write_real("Variables","Radiacion",objSistemaPlayer.radiacion);
ini_close();



