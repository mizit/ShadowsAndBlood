/// @description draw sprite on ground
/// @param ground_id instance of obj_ground_control
/// @param sprite 
/// @param x
/// @param y
/// @param xscale
/// @param yscale
/// @param rot
/// @param col
/// @param alpha
var l_gnd_ctrl = argument0;
var l_sprt = argument1;
var l_x = argument2;
var l_y = argument3;

with (l_gnd_ctrl)
{
	var l_gx = 0, l_gy = 0;
	l_gx = floor(l_x / surf_size);
	l_gy = floor(l_y / surf_size);
	
	shader_set(shd_premultiplied);
	gpu_set_blendmode(bm_add);
	for (var l_i = -1; l_i <= 1; l_i++)
	{
		for (var l_j = -1; l_j <= 1; l_j++)
		{
			if (l_gx + l_i >= 0) && (l_gx + l_i < surf_grid_width) && (l_gy + l_j >= 0) && (l_gy + l_j < surf_grid_height)
			{
				surface_set_target(surf_grid[# l_gx + l_i, l_gy + l_j]);
				draw_sprite_ext(l_sprt, -1, (l_x % surf_size) - (surf_size * l_i), 
				(l_y % surf_size) - (surf_size * l_j), argument4, argument5, argument6, argument7, argument8);
				surface_reset_target();
			}
		}
	}
	
	gpu_set_blendmode(bm_normal);
	shader_reset();
	
}