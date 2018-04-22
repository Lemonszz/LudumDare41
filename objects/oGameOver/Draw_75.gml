midX = display_get_gui_width() / 2;
midY = display_get_gui_height() / 2;

draw_set_alpha(0.5);
draw_set_colour(c_black);
draw_rectangle(0, 0, display_get_gui_width(), display_get_gui_height(), false);

draw_set_alpha(1);
draw_sprite(sGameOver, 0, midX, midY);

draw_set_colour(c_white);
var width = mouse_down;
draw_rectangle(0, midY + 20, 0 + width, midY + 30, false);