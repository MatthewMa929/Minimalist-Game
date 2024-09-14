/// @description Insert description here
// You can write your code in this editor
rotation_speed = 3;

self.x = 200;
self.y = room_height / 2;

sprite_set_offset(self.sprite_index, sprite_width / 2, sprite_height / 2);

center_x = bbox_right;
center_y = 669;

show_debug_message("Original tip is at " + string(bbox_right));

