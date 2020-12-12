/// @description Insert description here
// You can write your code in this editor

if(global.DEBUG and variable_global_exists("debug_surface") and surface_exists(global.debug_surface)) {
	var h,i;
	h = 14
	i = 0
	surface_set_target(global.debug_surface)
    draw_text(x, y + h * ++i, "People:           " + string(total_people) + "/" + string(total_housing_available))
	draw_text(x, y + h * ++i, "People Attracted: " + string(total_people_attracted))
	draw_text(x, y + h * ++i, "Work Needed:      " + string(total_people_working) + "/" + string(total_workers_needed))
	draw_text(x, y + h * ++i, "Food:             " + string(total_food))
	draw_text(x, y + h * ++i, "Oxygen:           " + string(total_oxygen))
	draw_text(x, y + h * ++i, "Entertainment:    " + string(total_entertainment))
	surface_reset_target()
}