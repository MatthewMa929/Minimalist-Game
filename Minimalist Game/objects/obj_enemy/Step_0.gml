//set speed correctly
if(alive){
	speed = -enemy_speed;
}
else{
	speed = 0;
}

//only detect bullet collision when alive
if(alive && place_meeting(x, y, obj_bullet)){
	enemy_health -= 1;
	if(enemy_health <= 0){
		alive = false;
	}
	else
	{
		instance_destroy(instance_nearest(x, y, obj_bullet));
		speed = speed * .3;
	}
}

//set to correct animation when destory
if(!alive){
	if(destory_sprite == noone){
		instance_destroy(id);
	}
	else{
		sprite_index = destory_sprite;
	}
}

if(place_meeting(x, y, obj_base)){
	in_base = true;
}

if(in_base && x < obj_base.bbox_right){
	audio_play_sound(snd_health_reduce, 1, false);
	global.health_point -=1;
	instance_destroy(id);
}
