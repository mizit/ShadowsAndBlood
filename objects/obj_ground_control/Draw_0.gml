/// @description 

for (var i = 0; i < surf_grid_width; i++)
{
	for (var j = 0; j < surf_grid_height; j++)
	{
		if (!surface_exists(surf_grid[# i, j]))
		{
			surf_grid[# i, j] = surface_create(surf_size, surf_size);
			if (sprite_exists(surf_grid_sprites[# i, j]))
			{
				surface_set_target(surf_grid[# i, j]);
				draw_sprite(surf_grid_sprites[# i, j], -1, 0, 0);
				surface_reset_target();
				sprite_delete(surf_grid_sprites[# i, j]);
				surf_grid_sprites[# i, j] = noone;
			}
		}
		if (!surface_exists(surf_grid_buf[# i, j]))
		{
			surf_grid_buf[# i, j] = surface_create(surf_size, surf_size);
		}
		shader_set(shd_ground);
		surface_clear(surf_grid_buf[# i, j]);
		surface_set_target(surf_grid_buf[# i, j]);
		draw_surface(surf_grid[# i, j], 0, 0);
		surface_reset_target();
		shader_reset();
		surface_copy(surf_grid[# i, j], 0, 0, surf_grid_buf[# i, j]);
		draw_surface(surf_grid[# i, j], i * surf_size, j * surf_size);
	}
}