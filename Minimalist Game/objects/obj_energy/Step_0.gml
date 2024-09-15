//find the energy bar and change accordingly
var _energy_bar = instance_nearest(x, y, obj_energy_bar)

//when the energy bar exist, locate and draw correctly
if(_energy_bar != noone){
	image_xscale = _energy_bar.energy * 0.01;
	x = obj_energy_bar.x - _energy_bar.sprite_width/2 + energy_offset;
	y = obj_energy_bar.y - _energy_bar.sprite_height/2 + energy_offset;
}
