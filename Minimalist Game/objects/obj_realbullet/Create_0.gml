/// @description Insert description here
// You can write your code in this editor
speed = 5;
angle = obj_turret.image_angle + 10;

if place_meeting(x, y, obj_enemy)
{
	instance_destroy(self);
}