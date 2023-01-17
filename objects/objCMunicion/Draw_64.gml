draw_sprite_ext(sprContornoMun, 0, 55, 0, 10, 2, 0, $FFFFFFFF & $ffffff, 1);

draw_sprite_ext(sprMunicion, 0, 65, 0, 1, 1, 0, $FFFFFF & $ffffff, 1);

draw_set_colour($FF93B221 & $ffffff);draw_set_alpha(1);

draw_text(60, 0, string("     "+string(objSistemaPlayer.municion)+"/"+string(objSistemaPlayer.municionT)) + "");

draw_set_font(Font1);