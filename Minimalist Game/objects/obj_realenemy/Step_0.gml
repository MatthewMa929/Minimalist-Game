/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

x = x - spd;

/*
x += lengthdir_x(spd, dir)
y += lengthdir_y(spd, dir)
*/

if place_meeting(x, y, obj_realbullet)
{
	instance_destroy(self);
}

if place_meeting(x, y, obj_base)
{
	instance_destroy(self);
}