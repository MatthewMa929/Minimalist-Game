/// @description Insert description here
// You can write your code in this editor
if (local == "ul")
{
	x += speed * cos(angle_to_player);
	y += speed * sin(angle_to_player);
}
else if (local == "ur")
{
	x -= speed * cos(angle_to_player);
	y += speed * sin(angle_to_player);
}
else if (local == "ll")
{
	x += speed * cos(angle_to_player);
	y -= speed * sin(angle_to_player);
}
else if (local = "lr")
{
	x -= speed * cos(angle_to_player);
	y -= speed * sin(angle_to_player);
}	