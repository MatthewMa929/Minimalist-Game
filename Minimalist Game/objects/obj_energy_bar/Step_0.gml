//add energy
if(energy < 100){
	if(energy + energy_gain_rate >= 100){
		energy = 100;
	}
	else{
		energy += energy_gain_rate;
	}
}

