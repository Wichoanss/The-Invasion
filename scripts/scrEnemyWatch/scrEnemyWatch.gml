// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrEnemyWatch(){
   var dx = objPlayer.x - x;
   
   if (sign(dx) == image_xscale && abs(dx) <= 96) {
	   state = "chasing";
   }
}
