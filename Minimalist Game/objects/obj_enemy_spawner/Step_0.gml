/// @description Insert description here
// You can write your code in this editor

timer --;

if (timer == 0) //spawn a new enemy every X frames.
{
	timer = curr_time;
	if (instance_exists(obj_enemy))
			instance_create_depth(room_width, random_range(400, room_height - 400), -100, obj_realenemy);
}
