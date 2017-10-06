/// @description 
blood_burst_cone(other.x, other.y - 10, 15, direction);
with(other)
{
	instance_destroy();
}
instance_destroy();