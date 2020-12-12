/// @description Insert description here
// You can write your code in this editor
x = round(mouse_x / global.GRID_SIZE) * global.GRID_SIZE
y = round(mouse_y / global.GRID_SIZE) * global.GRID_SIZE

depth = global.DEPTH_CONTROLLER

// Temporary Mouse Control Logic
if (keyboard_check_pressed(ord("1"))) {
	obj_city_mouse.state = MouseControlState.BUILD
	build_target = obj_house
}
if (keyboard_check_pressed(ord("2"))) {
	obj_city_mouse.state = MouseControlState.BUILD
	build_target = obj_farm
}
if (keyboard_check_pressed(ord("3"))) {
	obj_city_mouse.state = MouseControlState.CLEAR
}
if (keyboard_check_pressed(ord("0"))) {
	obj_city_mouse.state = MouseControlState.CLEAR
}

var vw = camera_get_view_width(view_current)
var vh = camera_get_view_height(view_current)
if(mouse_x - camera_get_view_x(view_current) > vw - GUI_WIDTH) {
	image_blend = c_purple
} else {
	switch(state) {
	    case MouseControlState.BUILD:
			image_speed = 0
			image_index = 0
			sprite_index = spr_square_tile
		
			building_sprite = object_get_sprite(build_target)
			building_width = ceil(sprite_get_width(building_sprite)/global.GRID_SIZE)
			building_height = ceil(sprite_get_height(building_sprite)/global.GRID_SIZE)
			var w = (building_width-.5) * global.GRID_SIZE
			var h = (building_height-.5) * global.GRID_SIZE
			building_can_build = !collision_rectangle(x, y, x+w, y+h, obj_building, false, true)
			if (!building_can_build and (selection_start_x == -1 or selection_start_y == -1)) {
				image_alpha = .5
			    image_blend = c_red
			} else {
				image_alpha = 1
				image_blend = c_green
			}
		
	
		    // TEMPORARY selection controls
			if (mouse_check_button_pressed(mb_left)) {
				selection_start_x = x
				selection_start_y = y
			}
			// TEMPORARY add house controls
			if (mouse_check_button_released(mb_left)) {
			
				if ((build_target != noone) and (scr_building_width(build_target) == 1 and scr_building_width(build_target) == 1) and (selection_start_x != -1 or selection_start_y != -1)) {
				    var sx = min(selection_start_x, x), mx = max(selection_start_x, x)
					var sy = min(selection_start_y, y), my = max(selection_start_y, y)
					for(var ix = sx; ix <= mx; ix += global.GRID_SIZE) {
						for(var iy = sy; iy <= my; iy += global.GRID_SIZE) {
							if (!instance_position(ix, iy, obj_building)) {
							    instance_create_depth(ix, iy, 0, build_target)
							}
						}
					}
				} else {
				    instance_create_depth(x, y, 0, build_target)
				}
			
				selection_start_x = -1
				selection_start_y = -1
			}

			// When not clear, stop building
			if (mouse_check_button_released(mb_right)) {
				var building = instance_position(x, y, obj_building)
				if (building != noone) {
					with(building) {
						instance_destroy(id, true)
					}
				} else {
					selection_start_x = -1
					selection_start_y = -1
					state = MouseControlState.SELECT
				}
			}
		    break;
		case MouseControlState.CLEAR:
		    image_alpha = .5
		    image_blend = c_red
			sprite_index = spr_dot
		
				    // TEMPORARY selection controls
			if (mouse_check_button_pressed(mb_left)) {
				selection_start_x = x
				selection_start_y = y
			}
			// TEMPORARY add house controls
			if (mouse_check_button_released(mb_left)) {
			
				if (selection_start_x != -1 and selection_start_y != -1) {
				    var sx = min(selection_start_x, x), mx = max(selection_start_x, x)
					var sy = min(selection_start_y, y), my = max(selection_start_y, y)
					for(var ix = sx; ix <= mx; ix += global.GRID_SIZE) {
						for(var iy = sy; iy <= my; iy += global.GRID_SIZE) {
							var building = instance_position(ix, iy, obj_building)
							with(building) {
								instance_destroy(id, true)
							}
						}
					}
				} else {
				    instance_create_depth(x, y, 0, build_target)
				}
			
				selection_start_x = -1
				selection_start_y = -1
			}
		
			// When not clear, stop building
			if (mouse_check_button_released(mb_right)) {
				var building = instance_position(x, y, obj_building)
				if (building != noone) {
					with(building) {
						instance_destroy(id, true)
					}
				} else {
					selection_start_x = -1
					selection_start_y = -1
					state = MouseControlState.SELECT
				}
			}
		
		    break;
		case MouseControlState.SELECT:
			image_alpha = 1
		    image_blend = c_white
			sprite_index = spr_dot
			selection_start_x = -1
			selection_start_y = -1
		    break;
	}

}