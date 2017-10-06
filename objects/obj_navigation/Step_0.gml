/// @description 
script_execute(input);


//view control
if (scale_current < scale_goal)
{
	scale_current *= (1 + scale_move);
	scale_current = min(scale_current, scale_goal);
}
if (scale_current > scale_goal)
{
	scale_current *= (1 - scale_move);
	scale_current = max(scale_current, scale_goal);
}
view_hborder = view_width * scale_current / 2;
view_vborder = view_height * scale_current / 2;
camera_set_view_size(view, view_width * scale_current, view_height * scale_current);
camera_set_view_pos(view, 
max(0, min(room_width - view_width * scale_current, view_object.x - view_hborder)), 
max(0, min(room_height - view_height * scale_current, view_object.y - view_vborder)));
