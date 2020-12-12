/// @description Insert description here
// You can write your code in this editor
var vw = camera_get_view_width(view_current)
if(mouse_x - camera_get_view_x(view_current) > vw - GUI_WIDTH) {

} else if (state == MouseControlState.BUILD) {
	
	if ((build_target != noone) and (scr_building_width(build_target) == 1 and scr_building_width(build_target) == 1) and (selection_start_x != -1 and selection_start_y != -1)) {
	    var sx = min(selection_start_x, x), mx = max(selection_start_x, x)
		var sy = min(selection_start_y, y), my = max(selection_start_y, y)
	    for(var ix = sx; ix <= mx; ix += global.GRID_SIZE) {
			for(var iy = sy; iy <= my; iy += global.GRID_SIZE) {
				if (!instance_position(ix, iy, obj_building)) {
					draw_sprite_ext(spr_square_tile,0,ix,iy,1,1,0,image_blend,image_alpha)
					draw_sprite_ext(building_sprite,0,x+ix*global.GRID_SIZE,y+iy*global.GRID_SIZE,1,1,0,image_blend,image_alpha)
				}
			}
		}
	} else {
		for(var ix = 0; ix < building_width; ix += 1) {
			for(var iy = 0; iy < building_height; iy += 1) {
				draw_sprite_ext(spr_square_tile,0,x+ix*global.GRID_SIZE,y+iy*global.GRID_SIZE,1,1,0,image_blend,image_alpha)
			}
		}
	}
	
	if (building_can_build and sprite_exists(building_sprite)) {
		draw_sprite_ext(building_sprite,0,x,y,1,1,0,image_blend,image_alpha)
	}
	
} else if (state == MouseControlState.CLEAR and (selection_start_x != -1 and selection_start_y != -1)) {
	var sx = min(selection_start_x, x), mx = max(selection_start_x, x)
	var sy = min(selection_start_y, y), my = max(selection_start_y, y)
	for(var ix = sx; ix <= mx; ix += global.GRID_SIZE) {
		for(var iy = sy; iy <= my; iy += global.GRID_SIZE) {
			draw_sprite_ext(spr_square_tile,0,ix,iy,1,1,0,image_blend,image_alpha)
		}
	}
} else {
	draw_self()
}