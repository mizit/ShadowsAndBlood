/// @description 
with (other)
{
	if (instance_position(x, y, other))
	{
		death = scr_death_burst;
		instance_destroy();
		blood_burst(x, y, 30);
	}
}