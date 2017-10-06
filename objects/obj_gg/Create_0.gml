/// @description 
event_inherited();

//gg variables
max_speed = 5;
accel = 0.5;
friction = 0.2;
depth = 1;

//callbacks
input = input_keyboard_gg;

hat = instance_create(x, y, obj_hat);
hat.owner = id;
hat.y_offset = -22;

accessory = instance_create(x, y, obj_cigar);
accessory.owner = id;
accessory.y_offset = -6;