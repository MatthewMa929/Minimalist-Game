//add rotation speed to the turret
var _rotate_val = rotation_speed;

//find the direction the turret is rotating
var _dir = sign(_rotate_val);

//add _rotate_val to the actual image_angle
while(_rotate_val != 0){
	//track if we have reached the max angle
	var reach_max_value = false;
	
	//if we are rotating counter-clock
	if(_dir > 0){
		if(image_angle == max_rotation_angle){
			reach_max_value = true;
		}
	}
	//if we are rotating clock-wise
	else if(_dir < 0){
		if(image_angle == -max_rotation_angle){
			reach_max_value = true
		}
	}
	
	//when we reach max angle, stop roate and change direction
	if(reach_max_value){
		//change direction by negate the rotation_speed;
		rotation_speed = -rotation_speed;
		//stop this loop
		_rotate_val = 0;
	}
	else{
		//change actual angle
		if(_dir > 0){
			image_angle += 1;
			_rotate_val -= 1;
		}
		else{
			image_angle -= 1;
			_rotate_val += 1;
		}
	}
}
	
//use space to shoot one bullet
if(keyboard_check_pressed(vk_space)){
	//get energy bar to calculate if enough energy
	var _energy_bar = instance_nearest(x, y, obj_energy_bar);
	if(_energy_bar != noone){
		//when we have enough energy
		if(_energy_bar.energy >= energy_use){
			audio_play_sound(snd_player_shoot, 1, false);
			var _new_bullet = instance_create_layer(x, y, "Instances", obj_bullet);
			//set correct direction for the bullet
			_new_bullet.direction = image_angle;
			//set correct image_angle for the bullet
			_new_bullet.image_angle = image_angle;
			_energy_bar.energy -= energy_use;
		}
	}
}	
