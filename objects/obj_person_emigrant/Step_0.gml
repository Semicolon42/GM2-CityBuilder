/// @description Insert description here
// You can write your code in this editor

// Remove unecessary instance of self
if (destination == noone) {
	speed = 0
	if (countdown > 0) countdown -= 1
	if (countdown == 0 and destination == noone) instance_destroy(id, true)
} else {
	dist_to_dest = point_distance(x, y, destination.x, destination.y)
	direction = point_direction(x, y, destination.x, destination.y)
	speed = walk_speed
	
	if(dist_to_dest <= walk_speed * 2) {
		instance_destroy(id, true)
	}
}

