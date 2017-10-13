/// @description 
blood_burst_cone_colored(other.x, other.y - 10, 15, direction, other.blood_colour);
with(other)
{
	death = scr_death_simple;
	instance_destroy();
}
instance_destroy();