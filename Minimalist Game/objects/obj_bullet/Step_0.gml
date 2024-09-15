//destory self when out of map;
if(x - sprite_width > room_width){
	instance_destroy(id);
}

var _num_hit = 1

if(place_meeting(x, y, obj_enemy))
{
	audio_play_sound(snd_hit_enemy, 1, false , 1 , 0, _num_hit);
	_num_hit += 3;
}