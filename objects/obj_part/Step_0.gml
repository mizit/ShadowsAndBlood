/// @description 

event_inherited();
image_angle += rot_speed;
if (z == 0)
{
	//image_angle = 0;
	rot_speed = 0;
	friction = 1;
	shadow_sprite = noone;
}
if (speed == 0)
{
	gnd_draw_surface_ext(obj_ground_control, surf, x - surf_size / 2, y - surf_size / 2,
	1, 1 / 2, 0, c_white, 1);
	instance_destroy();	
}
if (!surface_exists(surf))
{
	surf = surface_create(surf_size, surf_size);
}
surface_clear(surf);
surface_set_target(surf);
draw_sprite_ext(sprite_index, -1, surf_size / 2, surf_size / 2, image_xscale,
image_yscale, image_angle, c_white, image_alpha);
surface_reset_target();