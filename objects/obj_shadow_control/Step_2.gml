/// @description

//koeff
view_koeff_width = camera_get_view_width(view) / surf_width;
view_koeff_height = camera_get_view_height(view) / surf_height;
view_x = camera_get_view_x(view);
view_y = camera_get_view_y(view);

//draw
if (!surface_exists(shadow_surf))
{
	shadow_surf = surface_create(surf_width, surf_height);
}
surface_set_target(shadow_surf);
gpu_set_blendenable(1);
gpu_set_blendmode(bm_subtract);
draw_rectangle(0, 0, surf_width, surf_height, 0);
gpu_set_blendmode(bm_add);
with (obj_shadowed)
{
	if (sprite_exists(shadow_sprite))
	{
		var l_z_koeff;
		l_z_koeff = 1 - (min(z, z_max) / z_max) * (1 - z_koeff);
		draw_sprite_ext(shadow_sprite, -1, 
		(x + shadow_xoffset - other.view_x) / other.view_koeff_width, 
		(y + shadow_yoffset - other.view_y) / other.view_koeff_height,
		shadow_koeff_width * l_z_koeff/ other.view_koeff_width,
		shadow_koeff_height * l_z_koeff / other.view_koeff_height,
		0, c_white, 1);
	}
}
gpu_set_blendmode(bm_normal);
surface_reset_target();