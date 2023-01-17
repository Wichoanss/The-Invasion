/// @description Insert description here
// You can write your code in this editor
var explotion = instance_create_layer(objPlayer.x,objPlayer.y,"Bullets",objExplosionPlasma);
explotion.sprite_index = desttExplotion;
audio_play_sound(Explocion_P, 0, 0);
instance_destroy();