//find the energy bar and change accordingly
var _energy_bar = instance_nearest(x, y, obj_energy_bar)
var _turret = instance_nearest(x, y, obj_turret);

//when the energy bar exist, locate and draw correctly
if(_energy_bar != noone){
	image_xscale = _energy_bar.energy * 0.01;
	x = obj_energy_bar.x - _energy_bar.sprite_width/2 + energy_offset;
	y = obj_energy_bar.y - _energy_bar.sprite_height/2 + energy_offset;
	
	if(_turret != noone){
		if(_energy_bar.energy < _turret.energy_use){
			energy_low = true;
		}
		else{
			energy_low = false;
		}
	}
}
