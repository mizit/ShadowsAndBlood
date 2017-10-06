/// @description 
for (var i = 0; i < ds_list_size(blood_list); i++)
{
	var blood = blood_list[| i];
	blood[| BLOOD.X] += blood[| BLOOD.XSPEED];
	blood[| BLOOD.Y] += blood[| BLOOD.YSPEED];
	blood[| BLOOD.Z] += blood[| BLOOD.ZSPEED];
	blood[| BLOOD.ZSPEED] -= z_gravity;
	if (collision_circle(blood[| BLOOD.X], blood[| BLOOD.Y] - blood[| BLOOD.Z], blood[| BLOOD.SIZE],
	obj_iso_unit_surfaced, 1, 0))
	{
		var obj_unit = collision_circle(blood[| BLOOD.X], blood[| BLOOD.Y], blood[| BLOOD.SIZE],
		obj_iso_unit_surfaced, 0, 0);
		if (obj_unit)
		{
			if (blood[| BLOOD.YSPEED] < 0)
			{
				blood_draw_on_iso_unit(obj_unit, blood);
				gnd_draw_sprite_ext(obj_ground_control, sprite_ground,
				blood[| BLOOD.X], blood[| BLOOD.Y] - blood[| BLOOD.Z],
				2 * blood[| BLOOD.SIZE] / sprite_size, 2 * blood[| BLOOD.SIZE] / sprite_size / 3,
				0, blood[| BLOOD.COLOUR], image_alpha);
			}
			ds_list_delete(blood_list, i);
			ds_list_destroy(blood);
			i--;
			continue;
		}
	}
	if (blood[| BLOOD.Z] <= 0)
	{
		gnd_draw_sprite_ext(obj_ground_control, sprite_ground,
		blood[| BLOOD.X], blood[| BLOOD.Y],
		2 * blood[| BLOOD.SIZE] / sprite_size, 2 * blood[| BLOOD.SIZE] / sprite_size / 3,
		0, blood[| BLOOD.COLOUR], image_alpha);
		ds_list_delete(blood_list, i);
		ds_list_destroy(blood);
		i--;
	}
}
