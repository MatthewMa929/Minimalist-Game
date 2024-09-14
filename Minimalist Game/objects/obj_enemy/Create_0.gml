/// @description Insert description here
// You can write your code in this editor
/*
turret_centerX = obj_turret.x - obj_turret.sprite_width / 2;
turret_centerY =  obj_turret.y - obj_turret.sprite_height / 2;

if instance_exists(obj_turret)
{
    dir = point_direction(x, y, turret_centerX, turret_centerY)
    spd = 3.5
}
*/
randomise()
spd = random_range(2, 3);

image_xscale = .75;
image_yscale = .75;