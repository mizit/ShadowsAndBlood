/// @description 

shader_set(shd_shadow);
draw_surface_ext(shadow_surf, view_x, view_y,
view_koeff_width, view_koeff_height, image_angle, c_white, image_alpha);
shader_reset();
