/// @description easy creating part
/// @param x
/// @param y
/// @param sprite

var tmp = instance_create(argument0, argument1, obj_part);
with (tmp)
{
	sprite_index = argument2;
	direction = random(360);
	speed = random_range(1, 4);
	z_speed = random_range(5, 15);
	rot_speed = random_range(-15, 15);
	shadow_auto_create(id);
	shadow_xoffset = 0;
	shadow_yoffset = 0;
	surf_size = max(sprite_width, sprite_height);
	surf = surface_create(surf_size, surf_size);
}