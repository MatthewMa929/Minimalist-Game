/// @description Insert description here
// You can write your code in this editor

timer --;

if (timer == 0) //spawn a new enemy every X frames.
{
	timer = curr_time;
	if (instance_exists(obj_enemy))
		if (random(1) > .5)
			instance_create_depth(random(room_width / 2 - 300), random(room_height / 2 - 300), -100, obj_realenemy);
		else
			instance_create_depth(random(room_width / 2 + 300), random(room_height / 2 + 300), -100, obj_realenemy);
}
