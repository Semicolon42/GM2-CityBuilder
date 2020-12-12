/// @description Insert description here
// You can write your code in this editor
if(!surface_exists(global.debug_surface)) {
    global.debug_surface = surface_create(room_width, room_height)
}
surface_set_target(global.debug_surface)
draw_clear_alpha(c_white, 0)
surface_reset_target()