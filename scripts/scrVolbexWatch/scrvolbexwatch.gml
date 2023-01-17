// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrVolbexWatch(){
var dx = objPlayer.x - x;
var dy = objPlayer.y - y;
   
   //Perseguir
   if (sign(dx) == image_xscale && abs(dx) <= 192) && abs(dy) <= 96{ //96 ; 48
	   state = "chasing";
   }else
	state = "idle";
	
	//Si hay un hueco :'v
	if place_free(x+64*sign(image_xscale), y+8)
		state = "idle";
}