/// @description 
if (os_is_paused())
{
	for (var i = 0; i < surf_grid_width; i++)
	{
		for (var j = 0; j < surf_grid_height; j++)
		{
			if (sprite_exists(surf_grid_sprites[# i, j]))
			{
				sprite_delete(surf_grid_sprites[# i, j]);
				surf_grid_sprites[# i, j] = noone;
			}		
			surf_grid_sprites[# i, j] = sprite_create_from_surface(surf_grid[# i, j],
			0, 0, surf_size, surf_size, 0, 1, 0, 0);
		}
	}
}
