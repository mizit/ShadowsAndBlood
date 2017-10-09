//There is a shadow surface. There is drawing all obj_shadowed shadows.
//This surface is square with fixed size, but I rescale it to view.
surf_width = 1024;
surf_height = 1024;
shadow_surf = surface_create(surf_width, surf_height);

view_koeff_width = 1;
view_koeff_height = 1;
view_x = 0;
view_y = 0;
view = view_camera[0];	//I use this view for rescaling