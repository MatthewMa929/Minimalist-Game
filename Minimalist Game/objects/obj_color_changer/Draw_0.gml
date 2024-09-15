//calculate correct health percent for lerping
var _health_percent = global.health_point / global.max_health;

//get correct color for background using make_color_rgb
global.health_color = make_color_rgb(
    lerp(238, 124, _health_percent),
    lerp(64, 197, _health_percent),
    lerp(47, 118, _health_percent)
);

//set to correct background color
draw_set_color(global.health_color);

//draw background
draw_rectangle(0, 0, room_width, room_height, false);

//change back the draw color
draw_set_color(c_white);

//show_debug_message(global.health_point);

