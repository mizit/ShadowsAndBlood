//This is special subclass of obj_isometry_unit
//which have additional surface for blood(or something else) spots

//There is a little trick for optimization. If I need draw sprite on 
//local surface, I'll set it in special sprite_list.
//And in End Step Event I'll draw whole list in one time.
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
sprites_list = ds_list_create();

event_inherited();

blood_surf = surface_create(sprite_width, sprite_height);		//General surf
blood_surf_buf = surface_create(sprite_width, sprite_height);	//Buffer surf for shaders work
sprite_buf = noone;											//Sprite where I draw surf, if os_is_paused
blood_sprite_mask = noone;									//There is important part. When I draw a spots
															//some parts of sprite always be clear(like spaces
															//outside of sprite). If blood_sprite_mask is 
															//noone, sprite will autocreated. But you can 
															//set your own sprite for ban drawing spots on 
															//some place. This sprite have to have black part
															//(banned) and transperent part(allowed).

