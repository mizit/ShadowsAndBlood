/// @description This is example how to create blood explosion.
/// @param x
/// @param y
/// @param num number of blood blobs

repeat(argument2)
{
	var l_size = random_range(2, 16);
	var l_direction = random(360);
	var l_angle = random(pi / 2);
	var l_speed = random_range(25, 50) / l_size;
	var l_blob = blood_note_create(obj_blood_control, argument0, argument1, 10, 
	lengthdir_x(l_speed, l_direction) * cos(l_angle), 
	lengthdir_y(l_speed, l_direction) * cos(l_angle), 
	l_speed * sin(l_angle), make_color_rgb(128, 0, 0), l_size);
}