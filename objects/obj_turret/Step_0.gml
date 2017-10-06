var tmp_dir = d_angle;
if (owner)
{
    var tmp_dir = owner.image_angle + d_angle;
    if (base_dir != tmp_dir)
    {
        image_angle += (tmp_dir - base_dir);
    }
    if (scaled_by_owner)
    {
        if (owner.image_xscale < 0) && (xscaled == 0)
        {
            xscaled = 1;
            d_angle = 180 - d_angle;
        }
        if (owner.image_xscale > 0) && (xscaled == 1)
        {
            xscaled = 0;
            d_angle = 180 - d_angle;
        }
        if (owner.image_yscale < 0) && (yscaled == 0)
        {
            yscaled = 1;
            d_angle = 360 - d_angle;
        }
        if (owner.image_yscale > 0) && (yscaled == 1)
        {
            yscaled = 0;
            d_angle = 360 - d_angle;
        }
    }
}
base_dir = tmp_dir;
if (goal_angle != noone)
{
    if (abs(angle_difference(image_angle + sign(angle_difference(goal_angle, image_angle))*speed_rot, base_dir)) < max_angle)
    {
        if (abs(angle_difference(image_angle, goal_angle)) > speed_rot)
        {
            image_angle += sign(angle_difference(goal_angle, image_angle))*speed_rot;
        }
        else
        {
            image_angle = goal_angle;
        }
    }
    else
    {    
        if (abs(angle_difference(image_angle, base_dir)) > max_angle + speed_rot)
        {
            image_angle += sign(angle_difference(base_dir, image_angle))*speed_rot;
        }
    }
}

