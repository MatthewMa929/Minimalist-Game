
// Flashing effect when energy is low
if (energy_low) {
	if(flash_timer != flash_duration && flashing){
		flash_timer++;
		draw_sprite_ext(spr_energy, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha);
		show_debug_message("1");
	}
	else{
		flash_timer--;
		flashing = false;
		if(flash_timer != 0){
			draw_sprite_ext(spr_energy, 0, x, y, image_xscale, image_yscale, image_angle, c_gray, image_alpha);
			show_debug_message("0");
		}
		else{
			flashing = true;
		}
	}
}
else{
	draw_self();
}
