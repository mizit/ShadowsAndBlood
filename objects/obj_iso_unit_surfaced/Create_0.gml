/// @description 
enum SPRITE
{
	SPRITE = 0,
	SUBIMG = 1,
	X = 2,
	Y = 3,
	XSCALE = 4,
	YSCALE = 5,
	ROT = 6,
	COL = 7,
	ALPHA = 8
}

event_inherited();

blood_surf = surface_create(sprite_width, sprite_height);	//surface
blood_surf_buf = surface_create(sprite_width, sprite_height);	//surface
sprite_buf = noone;											//sprite
blood_sprite_mask = noone;									//sprite

sprites_list = ds_list_create();