/// @description 

if (!sprite_exists(sprite_index))
{
	alarm[0] = 1;
}
shadow_sprite = s_shadow;
shadow_mult = 2.5;
shadow_koeff_width = shadow_mult * sprite_width / sprite_get_width(shadow_sprite);
shadow_koeff_height = shadow_mult * (sprite_height / sprite_get_height(shadow_sprite)) / 3;
shadow_xoffset = sprite_width / 2 - sprite_xoffset;
shadow_yoffset = sprite_height - sprite_yoffset;
z = 0;
z_max = 150;
z_koeff = 0.5;
z_speed = 0;
z_gravity = 1;