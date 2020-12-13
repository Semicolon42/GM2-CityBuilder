/// TEMP SPEED CONTROLS
if (keyboard_check_pressed(ord("Q"))) { 
	if (global.GAME_SPEED != 0) {
		// DECREASE SPEED 
		global.GAME_SPEED = approach(global.GAME_SPEED, 0, .1)
	} else {
		// DECREASE SPEED WHILE PAUSED
		global.GAME_SPEED_UNPAUSE = approach(global.GAME_SPEED_UNPAUSE, 0, .1)
		speed_counter=0; 
		speed_normal_counter=0; 
	}
}
if (keyboard_check_pressed(ord("W"))) { 
	if (global.GAME_SPEED != 0) {
		// INCREASE SPEED
		global.GAME_SPEED = approach(global.GAME_SPEED, 2, .1)
	} else {
		// INCREASE SPEED WHILE PAUSED
		global.GAME_SPEED_UNPAUSE = approach(global.GAME_SPEED_UNPAUSE, 2, .1)
		speed_counter=0; 
		speed_normal_counter=0; 
	}
}
if (keyboard_check_pressed(ord("E"))) { 
	global.GAME_SPEED = 1; 
	global.GAME_SPEED_UNPAUSE = 1;
	speed_counter = 0; 
	speed_normal_counter = 0;
}
if (keyboard_check_pressed(ord("R"))) { 
	speed_counter=0; 
	speed_normal_counter=0 
}
if (keyboard_check_pressed(ord("A"))) { 
	if (global.GAME_SPEED != 0) {
		// PAUSE
		global.GAME_SPEED_UNPAUSE = global.GAME_SPEED; 
		global.GAME_SPEED = 0; 
	} else {
		// UNPAUSE
		global.GAME_SPEED = global.GAME_SPEED_UNPAUSE; 
		global.GAME_SPEED_UNPAUSE = 1;
		speed_counter=0; 
		speed_normal_counter=0; 
	}
}
speed_normal_counter = approach(speed_normal_counter, room_speed+1, 1)
speed_normal_counter = wrap(speed_normal_counter, 0, room_speed)
speed_counter = approach(speed_counter, room_speed+1, global.GAME_SPEED)
speed_counter = wrap(speed_counter, 0, room_speed)