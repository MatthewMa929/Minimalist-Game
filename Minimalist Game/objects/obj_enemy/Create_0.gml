/// @description Insert description here
// You can write your code in this editor

diff_x = abs((self.x - sprite_width / 2) - (obj_turret.x - obj_turret.sprite_width / 2));
diff_y = abs((self.y - sprite_height / 2) - (obj_turret.y - obj_turret.sprite_height / 2));
local = "";


if (self.y < room_height / 2 && self.x < room_width / 2) //upper left
{
	angle_to_player = arctan(diff_y / diff_x);
	image_angle = -angle_to_player;
	local = "ul";
	
}
if (self.y > room_height / 2 && self.x > room_width / 2) //lower right
{
	angle_to_player = arctan(diff_x / diff_y);
	image_angle = 90 + angle_to_player;
	local = "lr";
}
if (self.y < room_height / 2 && self.x > room_width / 2) //upper right
{
	angle_to_player = arctan(diff_x / diff_y);
	image_angle = -90 - angle_to_player;
	local = "ur";
}
if (self.y > room_height / 2 && self.x < room_width / 2) //lower left
{ 
	angle_to_player = arctan(diff_y/diff_x)
	image_angle = angle_to_player;
	local = "ll"
}
speed = 3;