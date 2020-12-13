/// @description Insert description here
// You can write your code in this editor

var w,h
w = 40
h = 20
draw_rectangle_color(x-w, y-h, x+w, y+h, c_red, c_teal, c_red, c_red, false)

if(global.DEBUG and variable_global_exists("debug_surface") and surface_exists(global.debug_surface)) {
	surface_set_target(global.debug_surface)
    draw_text(x,y,"Imigrant Countdown " + string(round(imigrant_time)))
	surface_reset_target()
}