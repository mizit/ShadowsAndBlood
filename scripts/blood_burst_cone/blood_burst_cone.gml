/// @description blood cone
/// @param x
/// @param y
/// @param num number of blood blobs
/// @param dir


repeat(argument2)
{
	var l_size = random_range(2, 16);
	var l_direction = argument3 + random_range(-15, 15);
	var l_angle = pi / 6;//random_range(pi / 6, pi / 3);
	var l_speed = random_range(12, 24) / sqrt(l_size);
	var l_blob = blood_note_create(obj_blood_control, argument0, argument1, 10, 
	lengthdir_x(l_speed, l_direction), 
	lengthdir_y(l_speed, l_direction), 
	l_speed * sin(l_angle), make_color_rgb(128, 0, 0), l_size);
}