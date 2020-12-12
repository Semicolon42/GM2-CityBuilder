/// @description Insert description here

enum MouseControlState {
	SELECT = 1,
	BUILD = 2,
	CLEAR = 3
}

state = MouseControlState.SELECT
depth = global.DEPTH_CONTROLLER

building_width = 1
building_height = 1
build_target = noone
sprite_build = noone
building_can_build = false

selection_start_x = -1
selection_start_y = -1

GUI_WIDTH = global.GRID_SIZE * 3