/*EN ESTE IF SIRVE PARA EL ATRIBUTO DE PUNTUAJE
SI EL PUNTUAJE LLEGA A 2500 PUNTOS, EL JUGADOR RECIBE 100 DE MUNICION, POR CADA DISPARO ACERTADO A UN ENEMIGO
SE AUMENTAN 100 PUNTOS AL JUGADOR. */

if (soccer >= 2500){
	objSistemaPlayer.municionT += 100;
	objSistemaPlayer.soccer -= 2500;
	audio_play_sound(Score, 0, 0);
}


/*EN ESTE IF APLJCAMOS QUE CUANDO EL JUGADOR MUERA Y AUN TENGA VIDAS REAPARESCA EN EL ULTIMO
CHECKPOINT QUE LOGRO INTERACTUAR, DE IGUAL MANERA SE LE RESTAN 100 PUNTOS POR CADA MUERTE
Y SE LE QUITA 1 VIDA. */

if (playerHP <= 0 && global.vidas >= 0){
	audio_play_sound(sndMuerte, 0, 0);
	objSistemaPlayer.soccer -= 100;
    global.vidas -= 1;
	objSistemaPlayer.muertes += 1;
	action = "Death"
	objPlayer.x = global.numSpawnX;
	objPlayer.y = global.numSpawnY;
	playerHP = playerMaxHP;
	
}



/*AQUI APLICAMOS LA RADIACION, SI LA RADIACION LLEGA A 100, EL JUGADOR MUERE... */
if (radiacion >= 100){
	objSistemaPlayer.playerHP -= 40;
	objSistemaPlayer.radiacion -= 100;
}








	



