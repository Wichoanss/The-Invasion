// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEliteWatch(){
	var dx = objPlayer.x - x; 
	var dy = objPlayer.y - y;
   
   if (sign(dx) == image_xscale && abs(dx) <= 96) && abs(dy) <= 48{
	   state = "chasing";
   }
}
