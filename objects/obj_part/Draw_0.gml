if (z > 0)
{
	event_inherited();
}
else	//If object on ground it will shown in prospect.
{
	if (!surface_exists(surf))
	{
		surf = surface_create(surf_size, surf_size);
	}
	draw_surface_ext(surf, x - surf_size / 2, y - surf_size / 2,
	1, 1 / 2, 0, c_white, 1);
}