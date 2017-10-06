if (mouse_wheel_down())
{
	scale_goal *= (1 + scale_step);
}
if (mouse_wheel_up())
{
	scale_goal *= (1 - scale_step);
}
scale_goal = clamp(scale_goal, scale_min, scale_max);
