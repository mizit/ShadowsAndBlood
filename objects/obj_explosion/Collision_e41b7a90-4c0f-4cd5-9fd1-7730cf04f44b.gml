with (other)
{
	if (instance_position(x, y, other))
	{
		death = scr_death_burst;
		instance_destroy();
		blood_burst_colored(x, y, 30, blood_colour);
	}
}