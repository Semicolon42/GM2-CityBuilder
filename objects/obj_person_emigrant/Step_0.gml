/// @description Insert description here
// You can write your code in this editor

// Remove unecessary instance of self
if (destination == noone) {
	if (countdown > 0) countdown -= global.GAME_SPEED
	if (global.GAME_SPEED > 0 and countdown == 0 and destination == noone) instance_destroy(id, true)
} else {
	// If the game is not paused
	if (global.GAME_SPEED > 0) {
		// Move towards the destination
		x += approach_linear_x(x, y, destination.x, destination.y, walk_speed * global.GAME_SPEED)
		y += approach_linear_y(x, y, destination.x, destination.y, walk_speed * global.GAME_SPEED)
	
		dist_to_dest = point_distance(x, y, destination.x, destination.y)
		if(dist_to_dest <= walk_speed * 2) {
			instance_destroy(id, true)
		}
	}
}

