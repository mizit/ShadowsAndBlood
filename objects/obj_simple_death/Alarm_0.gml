/// @description 
event_inherited();

if (left)
{
	shadow_xoffset = sprite_width / 2 - sprite_xoffset - sprite_height / 2;
}
else
{
	shadow_xoffset = sprite_width / 2 - sprite_xoffset + sprite_height / 2;
}
shadow_koeff_width = shadow_mult * sprite_height / sprite_get_height(shadow_sprite);
