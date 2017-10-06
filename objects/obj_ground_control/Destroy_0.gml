/// @description 
for (var i = 0; i < surf_grid_width; i++)
{
	for (var j = 0; j < surf_grid_height; j++)
	{
		surface_free(surf_grid[# i, j]);
		surface_free(surf_grid_buf[# i, j]);
	}
}
ds_grid_destroy(surf_grid);
ds_grid_destroy(surf_grid_buf);
ds_grid_destroy(surf_grid_sprites);