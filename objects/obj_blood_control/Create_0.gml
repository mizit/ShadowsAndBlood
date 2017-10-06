/// @description 
enum BLOOD
{
	X = 0,
	Y = 1,
	Z = 2,
	XSPEED = 3,
	YSPEED = 4,
	ZSPEED = 5,
	COLOUR = 6,
	SIZE = 7,
}
blood_list = ds_list_create();
z_gravity = 1;
sprite_fly = s_blood_fly;
sprite_ground = s_blood;
sprite_size = sprite_get_width(sprite_fly);