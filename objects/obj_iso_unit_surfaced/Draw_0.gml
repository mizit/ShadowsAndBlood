/// @description 

event_inherited();
if (!surface_exists(blood_surf))
{
	blood_surf = surface_create(sprite_width, sprite_height);
	if (sprite_exists(sprite_buf))
	{
		surface_set_target(blood_surf);
		draw_sprite(sprite_buf, -1, 0, 0);
		surface_reset_target();
		sprite_delete(sprite_buf);
	}
}
draw_surface(blood_surf, x - sprite_xoffset, y - sprite_yoffset);
