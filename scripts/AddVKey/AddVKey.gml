// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function AddVKey(keycode){
	var platform = os_type;
	if (platform == os_winphone or platform == os_macosx){
		instance_destroy();
	} else {
		key = keycode;
		virtual_key_add(x,y,sprite_get_width(sprite_index)*image_xscale,
		sprite_get_height(sprite_index)*image_yscale, key);
	}
}