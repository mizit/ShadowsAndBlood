/// @description death when object scatter on parts
for (var i = 0; i < ds_list_size(parts); i++)
{
	var l_x = x - sprite_xoffset + sprite_get_xoffset(parts[| i]);
	var l_y = y - sprite_yoffset + sprite_get_yoffset(parts[| i]);
	part_create(l_x, l_y, parts[| i]);
}