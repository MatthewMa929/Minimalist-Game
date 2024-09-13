/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

x += lengthdir_x(spd, dir)
y += lengthdir_y(spd, dir)

if place_meeting(x, y, obj_realbullet)
{
	instance_destroy(self);
}


if ((abs(x - turret_centerX) < 5) || (abs(y - turret_centerY) < 5))
{
	instance_destroy(self);
}