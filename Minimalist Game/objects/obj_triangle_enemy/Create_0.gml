/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enemy_speed = 1.5 + min(global.enemy_generation / 15, 3.5);
speed = enemy_speed;

enemy_health = 1;

destory_sprite = spr_triangle_destory;

