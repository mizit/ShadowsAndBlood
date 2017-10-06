/// @description Controlling gg by keyboard

var l_h, l_v;
l_h = (keyboard_check(ord("D")) - keyboard_check(ord("A"))) * accel;
l_v = (keyboard_check(ord("S")) - keyboard_check(ord("W"))) * accel;
if ((l_h != 0) && (l_v != 0))
{
	l_h *= 1.44;
	l_v *= 1.44;
}
hspeed += l_h;
vspeed += l_v;
speed = min(speed, max_speed);

if (mouse_check_button_pressed(mb_right))
{
	var tmp = instance_create(x, y - 5, obj_dinamite);
	tmp.direction = point_direction(x, y, mouse_x, mouse_y);
	tmp.speed = 8;
}

if (mouse_check_button_pressed(mb_left))
{
	var tmp = instance_create(x, y - 5, obj_bullet);
	tmp.direction = point_direction(x, y, mouse_x, mouse_y);
	tmp.image_angle = tmp.direction;
}