/// @description 
event_inherited();

//falling
if (left)
{
	image_angle = min(90, image_angle + fall_speed);
	if (image_angle == 90)
	{
		shrink_start = 1;
	}
}
else
{
	image_angle = max(-90, image_angle - fall_speed);
	if (image_angle == -90)
	{
		shrink_start = 1;
	}
}

//shrinking
if (shrink_start)
{
	image_xscale = max(shrink_goal, image_xscale - shrink_step);
	if (image_xscale == shrink_goal)
	{
		gnd_draw_surface(obj_ground_control, my_surf, x - surf_size / 2, y - surf_size);
		instance_destroy();
	}
}

//surface work
if (!surface_exists(my_surf))
{
	surf_size = max(sprite_width * 2, sprite_height * 2);
	my_surf = surface_create(surf_size, surf_size);
}
surface_set_target(my_surf);
gpu_set_blendmode(bm_subtract);
draw_rectangle(0, 0, surf_size, surf_size, 0);
gpu_set_blendmode(bm_normal);
draw_sprite_ext(sprite_index, -1, surf_size / 2, surf_size, image_xscale, image_yscale, image_angle, c_white, image_alpha);
surface_reset_target();
