//destory self when out of map;
if(x - sprite_width > room_width){
	instance_destroy(id);
}

if(place_meeting(x, y, obj_enemy)){
	var _hit_enemy = instance_place(x, y, obj_enemy);
	_hit_enemy.enemy_health -= 1;
}