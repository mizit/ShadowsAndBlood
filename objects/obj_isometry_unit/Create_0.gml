//This object is modelling common behavior of isometry units.
//It needs for example. So you can change or fix it, how you need.
//If you don't forget about event_inherited(), it won't break anything.
event_inherited();
//In create event: 
//1. I declare functor to death.
//2. List of parts for which the object is scattered.
death = scr_death_full;
parts = ds_list_create();
//In step event I control depth from y-coord.