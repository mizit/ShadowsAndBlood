/// @description 
event_inherited();
if (blood_sprite_mask == noone)
{
	var surf_mask = surface_create(sprite_width, sprite_height);
	surface_set_target(surf_mask);
	draw_set_color(c_black);
	shader_set(shd_mask);
	draw_sprite(sprite_index, -1, sprite_xoffset, sprite_yoffset);
	shader_reset();
	surface_reset_target();
	blood_sprite_mask = sprite_create_from_surface(surf_mask, 0, 0, sprite_width, sprite_height,
	0, 1, sprite_xoffset, sprite_yoffset);
	surface_free(surf_mask);
}
if (os_is_paused())
{
	if (sprite_exists(sprite_buf))
	{
		sprite_delete(sprite_buf);
	}
	sprite_buf = sprite_create_from_surface(blood_surf, 0, 0, sprite_width, sprite_height, 0, 1, 0, 0);
}