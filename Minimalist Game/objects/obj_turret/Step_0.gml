/// @description Insert description here
// You can write your code in this editor
	
var tip_location_x = center_x;
var tip_location_y = center_y;
	
image_angle += rotation_speed;

if image_angle >= 85
	rotation_speed = -rotation_speed
if image_angle <= -85
	rotation_speed = -rotation_speed


tip_location_x = x + sprite_width / 2 * abs(cos(image_angle));
tip_location_y = center_y - sprite_height / 2 * sin(image_angle * pi / 180);


show_debug_message("x and y is " + string(x) + " " + string(center_y))
show_debug_message("Angle is " + string(image_angle));
show_debug_message("Sin of Angle is " + string(sin(image_angle * pi / 180)));
show_debug_message("Change in y is " + string(sprite_height / 2 * sin(image_angle * pi / 180)));
show_debug_message("Caculated tip y is " + string(tip_location_y));
show_debug_message(" ");


if (keyboard_check_pressed(vk_space))
{
	instance_create_depth(tip_location_x, tip_location_y, -100, obj_realbullet);
}