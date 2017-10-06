if (owner)
{
	depth = owner.depth - 1;
    x = owner.x + lengthdir_x(x_offset * owner.image_xscale, owner.image_angle) + 
	lengthdir_x(y_offset * owner.image_yscale, owner.image_angle - 90);
    y = owner.y + lengthdir_y(x_offset * owner.image_xscale, owner.image_angle) + 
	lengthdir_y(y_offset * owner.image_yscale, owner.image_angle - 90);
}

