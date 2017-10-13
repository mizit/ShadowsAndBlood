//There is my particles system. It works quite slower then standart, but more complicated.
//It includes list of particles. Every particle is small list.
enum BLOOD	//It is enum for describe one particle list.
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
//depth = -20000;