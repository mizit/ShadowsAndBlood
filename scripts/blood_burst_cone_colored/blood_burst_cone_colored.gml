/// @description This is example how to create directional blood burst.
/// @param x
/// @param y
/// @param num number of blood blobs
/// @param dir
/// @param col


repeat(argument2)
{
	var l_size = random_range(2, 16);
	var l_direction = argument3 + random_range(-15, 15);
	var l_angle = pi / 6;
	var l_speed = random_range(12, 24) / sqrt(l_size);
	var l_blob = blood_note_create(obj_blood_control, argument0, argument1, 10, 
	lengthdir_x(l_speed, l_direction), 
	lengthdir_y(l_speed, l_direction), 
	l_speed * sin(l_angle), argument4, l_size);
}