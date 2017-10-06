/// @description 

scale_step = 0.3;
scale_current = 1;
scale_min = 0.3;
scale_max = 2;
scale_move = 0.03;
scale_goal = 1;

view = view_camera[0];
view_width = camera_get_view_width(view);
view_height = camera_get_view_height(view);
view_hborder = view_width / 2;
view_vborder = view_height / 2;
view_object = obj_gg;
input = input_view;