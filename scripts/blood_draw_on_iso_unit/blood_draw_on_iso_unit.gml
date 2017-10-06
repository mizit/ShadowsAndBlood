/// @description draw blood on objects
/// @param obj
/// @param blood_note

var l_obj = argument0;
var l_blob = argument1;
var l_blood_control = obj_blood_control;
var l_x = l_blob[| BLOOD.X] - l_obj.x + l_obj.sprite_xoffset;
var l_y = l_blob[| BLOOD.Y] - l_blob[| BLOOD.Z] - l_obj.y + l_obj.sprite_yoffset;
sprite_draw_on_iso_unit_ext(l_obj, l_blood_control.sprite_ground, -1, l_x, l_y,
1 / 3, 1, 0, l_blob[| BLOOD.COLOUR], 1);