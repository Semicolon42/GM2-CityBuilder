/// @description Insert description here
// You can write your code in this editor

var w
w = 20/2
draw_rectangle_color(x-w,y-w,x+w,y+w,c_blue,c_blue,c_blue,c_blue,false)
draw_self()

if(global.DEBUG and variable_global_exists("debug_surface") and surface_exists(global.debug_surface)) { 
	surface_set_target(global.debug_surface)
	var h;
	h = 10
	draw_text(x, y + h * 1, "L:" + string(level))
    draw_text(x, y + h * 2, "P:" + string(people) + "/" + string(max_people))
	if people_not_fed > 0 {
		draw_set_color(c_red)
		draw_text(x, y + h * 3, "!:" + string(people_not_fed))
		draw_set_color(c_white)
	}
	surface_reset_target()
}
