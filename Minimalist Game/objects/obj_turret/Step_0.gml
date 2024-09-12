/// @description Insert description here
// You can write your code in this editor
	
image_angle += rotation_speed;

if (keyboard_check_pressed(vk_space))
{
	instance_create_depth(x - sprite_width/2, y - sprite_height/2, -100, obj_realbullet);
}