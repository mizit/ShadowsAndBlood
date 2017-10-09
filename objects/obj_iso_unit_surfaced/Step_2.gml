/// @description 

event_inherited();
if (surface_exists(blood_surf))
{
	surface_set_target(blood_surf);
	gpu_set_blendmode(bm_add);
	while (ds_list_size(sprites_list))
	{
		var l_spr = sprites_list[| 0];
		draw_sprite_ext(l_spr[| SPRITE.SPRITE], l_spr[| SPRITE.SUBIMG],
		l_spr[| SPRITE.X], l_spr[| SPRITE.Y], l_spr[| SPRITE.XSCALE], 
		l_spr[| SPRITE.YSCALE], l_spr[| SPRITE.ROT], l_spr[| SPRITE.COL],
		l_spr[| SPRITE.ALPHA]);
		ds_list_delete(sprites_list, 0);
		ds_list_destroy(l_spr);
	}
	gpu_set_blendmode(bm_subtract);
	draw_sprite(blood_sprite_mask, -1, sprite_get_xoffset(blood_sprite_mask), 
	sprite_get_yoffset(blood_sprite_mask));
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	if (!surface_exists(blood_surf_buf))
	{
		blood_surf_buf = surface_create(sprite_width, sprite_height);
	}
	surface_set_target(blood_surf_buf);
	shader_set(shd_buildings);
	draw_surface(blood_surf, 0, 0);
	shader_reset();
	surface_reset_target();
	surface_copy(blood_surf, 0, 0, blood_surf_buf);
}