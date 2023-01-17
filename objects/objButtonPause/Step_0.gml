/// @description Insert description here
// You can write your code in this editor
event_inherited();

if (keyboard_check(key)){
	{
		image_index = 1
		image_xscale = 0.3
		image_yscale = 0.3
	}
} else if (keyboard_check_released(key)){
image_index = 0;
image_xscale = 0.4
image_yscale = 0.4
}