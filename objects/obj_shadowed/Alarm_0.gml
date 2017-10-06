/// @description 
shadow_koeff_width = 2 * sprite_width / sprite_get_width(shadow_sprite);
shadow_koeff_height = 2 * (sprite_height / sprite_get_height(shadow_sprite)) / 3;
shadow_xoffset = sprite_width / 2 - sprite_xoffset;
shadow_yoffset = sprite_height - sprite_yoffset;