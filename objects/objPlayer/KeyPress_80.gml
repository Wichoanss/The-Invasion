/// @description Insert description here
// You can write your code in this editor
ini_open("WALKER.ini");
objPlayer.weapon=ini_read_string("Variables","Arma","NW");
objSistemaPlayer.playerHP=ini_read_real("Variables","Vida",0);
objSistemaPlayer.soccer=ini_read_real("Variables","Score",0);
objSistemaPlayer.municion=ini_read_real("Variables","Municion",0);
objSistemaPlayer.muertes=ini_read_real("Variables","Muertes",0);
global.vidas=ini_read_real("Variables","Vidas",3);
objSistemaPlayer.municionT=ini_read_real("Variables","MunicionT",0);
objSistemaPlayer.radiacion=ini_read_real("Variables","Radiacion",0);
ini_close();