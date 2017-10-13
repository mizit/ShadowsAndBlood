/// @description 
for (var i = 0; i < ds_list_size(blood_list); i++)
{
	var blood = blood_list[| i];
	draw_sprite_ext(sprite_fly, -1, 
	blood[| BLOOD.X], blood[| BLOOD.Y] - blood[| BLOOD.Z],
	blood[| BLOOD.SIZE] / sprite_size, blood[| BLOOD.SIZE] / sprite_size,
	0, blood[| BLOOD.COLOUR], image_alpha);
}