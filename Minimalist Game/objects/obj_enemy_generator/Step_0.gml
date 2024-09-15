//reduce the spawn_timer
spawn_timer --;

//spawn one enemy when timer is reduced to 0
if(spawn_timer == 0){
	
	//new generation of faster enemies
	num_spawned += 1;
	
	if (num_spawned % 10 == 0)
	{
		global.enemy_generation += 1;
	}
	
	//randomly choose a enemy to generate
	var _enemy_type = choose(obj_triangle_enemy, obj_square_enemy);
	//generate enemy
	var _new_enemy = instance_create_layer(room_width + 100, room_height / 2, "Instances", _enemy_type);
	
	//set the spawn loc x for the enemy
	var _spawn_x = room_width + _new_enemy.sprite_width + 10;
	//set the spawn loc y for the enemy
	var _spawn_y = irandom_range(spawn_offset, room_height - spawn_offset);
	//set the new_enemy's location correctly
	_new_enemy.x = _spawn_x;
	_new_enemy.y = _spawn_y;
	
	//reset the timer
	spawn_timer = spawn_rate;
}

