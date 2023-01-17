//if (abs(x - other.x) <= 3){
//image_index = 1;
//global.CHECKPOINT = [x, y];
//}


with (other)
{
	if (image_index == 0) image_index = 1
	global.numSpawnX = x;
	global.numSpawnY = y;
}