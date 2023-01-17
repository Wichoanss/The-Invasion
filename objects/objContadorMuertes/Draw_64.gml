/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 0E1500AA
/// @DnDArgument : "x" "247"
/// @DnDArgument : "xscale" "10"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "sprContornolives"
/// @DnDSaveInfo : "sprite" "sprContornolives"
draw_sprite_ext(sprContornolives, 0, 247, 0, 10, 2, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 3B2DD23D
/// @DnDArgument : "x" "257"
/// @DnDArgument : "y" "1"
/// @DnDArgument : "sprite" "sprRadi"
/// @DnDSaveInfo : "sprite" "sprRadi"
draw_sprite_ext(sprRadi, 0, 257, 1, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 4CC5EF57
/// @DnDArgument : "x" "252"
/// @DnDArgument : "caption" ""     ""
/// @DnDArgument : "var" "objSistemaPlayer.muertes"
draw_text(252, 0, string("     ") + string(objSistemaPlayer.muertes));

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 08F66CBA
/// @DnDArgument : "x" "347"
/// @DnDArgument : "xscale" " 10"
/// @DnDArgument : "yscale" "2"
/// @DnDArgument : "sprite" "sprContornoexp"
/// @DnDSaveInfo : "sprite" "sprContornoexp"
draw_sprite_ext(sprContornoexp, 0, 347, 0,  10, 2, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
/// @DnDVersion : 1
/// @DnDHash : 20FE2369
/// @DnDArgument : "x" "357"
/// @DnDArgument : "y" "3"
/// @DnDArgument : "sprite" "sprcalavera"
/// @DnDSaveInfo : "sprite" "sprcalavera"
draw_sprite_ext(sprcalavera, 0, 357, 3, 1, 1, 0, $FFFFFF & $ffffff, 1);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 31BA4ADD
/// @DnDArgument : "x" "352"
/// @DnDArgument : "caption" ""     ""
/// @DnDArgument : "var" "objSistemaPlayer.radiacion"
draw_text(352, 0, string("     ") + string(objSistemaPlayer.radiacion));