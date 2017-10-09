/// @description death when victim fall on side
// have to be run from isometry_unit
var tmp = instance_create(x, y, obj_simple_death);
tmp.sprite_index = sprite_index;
tmp.left = choose(0, 1);