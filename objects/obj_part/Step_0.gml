event_inherited();
//rotating
image_angle += rot_speed;
if (z == 0)					//If object fell down
{
	rot_speed = max(0, rot_speed - rot_friction);	//It'll stopping move
	friction = 0.2;			
	shadow_sprite = noone;							//and switch off shadow
}
if (speed == 0)				//If object stopped
{
	gnd_draw_surface_ext(obj_ground_control, surf, x - surf_size / 2, y - surf_size / 2,
	1, 1 / 2, 0, c_white, 1);	//It'll drawn on ground(scaled on y)
	instance_destroy();			//and destroyed
}
//Draw sprite to surface
if (!surface_exists(surf))
{
	surf = surface_create(surf_size, surf_size);
}
surface_clear(surf);
surface_set_target(surf);
draw_sprite_ext(sprite_index, -1, surf_size / 2, surf_size / 2, image_xscale,
image_yscale, image_angle, c_white, image_alpha);
surface_reset_target();