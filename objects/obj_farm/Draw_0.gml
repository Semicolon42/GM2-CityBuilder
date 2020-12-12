/// @description Insert description here
// You can write your code in this editor
draw_self()

if(global.DEBUG and variable_global_exists("debug_surface") and surface_exists(global.debug_surface)) {
	surface_set_target(global.debug_surface)
    draw_text(x,y+48,string(PROGRESS_MAX) + "/" + string(progress))
	draw_text(x,y+64,string(WORKERS_MAX) + "/" + string(workers))
	surface_reset_target()
}