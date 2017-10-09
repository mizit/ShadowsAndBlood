/// @description auto setting shadow from sprite. 
/// @param obj_shadowed

var l_shd = argument0;
with(l_shd)
{
	//Set shadow size from sprite
	shadow_koeff_width = shadow_mult * sprite_width / sprite_get_width(shadow_sprite);
	shadow_koeff_height = shadow_mult * (sprite_height / sprite_get_height(shadow_sprite)) / 3;
	//Set shadow to center bottom of sprite
	shadow_xoffset = sprite_width / 2 - sprite_xoffset;
	shadow_yoffset = sprite_height - sprite_yoffset;
}