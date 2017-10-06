/// @description 
while (ds_list_size(blood_list))
{
	ds_list_destroy(blood_list[| 0]);
	ds_list_delete(blood_list, 0);
}
ds_list_destroy(blood_list);