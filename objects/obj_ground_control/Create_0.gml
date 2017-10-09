//There is grid of surfaces
//Surfaces are squares
surf_size = 1024;			//Size of every surface in pixels
surf_grid_width = ceil(room_width / surf_size);		//Size of grid is depend of room size
surf_grid_height = ceil(room_height / surf_size);
surf_grid = ds_grid_create(surf_grid_width, surf_grid_height);	//It's grid
surf_grid_buf = ds_grid_create(surf_grid_width, surf_grid_height);	//It's buffer grid for draw
for (var i = 0; i < surf_grid_width; i++)
{
	for (var j = 0; j < surf_grid_height; j++)
	{
		surf_grid[# i, j] = surface_create(surf_size, surf_size);
		surf_grid_buf[# i, j] = surface_create(surf_size, surf_size);
	}
}
surf_grid_sprites = ds_grid_create(surf_grid_width, surf_grid_height);
ds_grid_set_region(surf_grid_sprites, 0, 0, surf_grid_width - 1, surf_grid_height - 1, noone);