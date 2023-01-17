/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprContornoVida, 0, 5, 2, (objSistemaPlayer.playerMaxHP + 7) /8, (2 + 7) / 8, 0, c_white, 1);
draw_sprite_part(sprBarraVida, 0, 0, 0, objSistemaPlayer.playerHP, 3, 9, 5);