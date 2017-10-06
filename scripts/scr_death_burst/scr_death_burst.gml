for (var i = 0; i < ds_list_size(parts); i++)
{
	var l_x = x - sprite_xoffset + sprite_get_xoffset(parts[| i]);
	var l_y = y - sprite_yoffset + sprite_get_yoffset(parts[| i]);
	var tmp = instance_create(l_x, l_y, obj_part);
	tmp.sprite_index = parts[| i];
	tmp.direction = random(360);
	tmp.speed = random_range(1, 4);
	tmp.z_speed = random_range(5, 15);
	tmp.rot_speed = random_range(-15, 15);
}