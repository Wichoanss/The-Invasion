/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 7CF99377
/// @DnDArgument : "x" "155"
/// @DnDArgument : "xscale" "10"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "sprContornoerad"
/// @DnDSaveInfo : "sprite" "sprContornoerad"
draw_sprite_ext(sprContornoerad, 0, 155, 0, 10, 2, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4C8AC039
/// @DnDArgument : "code" "draw_text(160, 1, string("EXP: ") + string(objSistemaPlayer.soccer));$(13_10)$(13_10)draw_set_font(Font1);$(13_10)$(13_10)"
draw_text(160, 1, string("EXP: ") + string(objSistemaPlayer.soccer));

draw_set_font(Font1);