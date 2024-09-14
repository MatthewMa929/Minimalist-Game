//set speed correctly
if(alive){
	speed = -enemy_speed;
}
else{
	speed = 0;
}


if(alive && place_meeting(x, y, obj_bullet)){
	enemy_health -= 1;
	if(enemy_health <= 0){
		alive = false;
	}
}

if(!alive){
	if(destory_sprite == noone){
		instance_destroy(id);
	}
	else{
		sprite_index = destory_sprite;
	}
}

