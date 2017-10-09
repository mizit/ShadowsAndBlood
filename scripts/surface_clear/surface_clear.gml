// @decription simple script for clearing surfaces
// @param surf

var l_surf = argument0;
surface_set_target(l_surf);
gpu_set_blendmode(bm_subtract);
draw_set_color(c_black);
draw_rectangle(0, 0, surface_get_width(l_surf), surface_get_height(l_surf), 0);
gpu_set_blendmode(bm_normal);
surface_reset_target();