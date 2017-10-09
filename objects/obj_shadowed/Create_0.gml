// The parentest parent of unit. It describe shadow and z-axis.
// If you don't need shadow, set shadow_sprite in noone

//shadow
shadow_sprite = s_shadow;	//I am using gradient circle, but you can use any 
							//other shapes. Anyway, this sprite have to be white for correct work
shadow_mult = 2.5;			//It general multiplikator of shadow size. You can set it more or less if you need.
shadow_koeff_width = 0;		//Shadow's size in pixels. I set it in shadow_auto_create.
shadow_koeff_height = 0;
shadow_xoffset = 0;			//Shadow's offset from object x/y. I set it in shadow_auto_create.
shadow_yoffset = 0;
shadow_auto_create(id);

//z
z = 0;				//current z-coord
z_max = 150;		//When object flying up, its size scaling down. This is max high for this effect.
z_koeff = 0.5;		//Max scaling down.
z_speed = 0;		//current z-speed
z_gravity = 1;		//gravity