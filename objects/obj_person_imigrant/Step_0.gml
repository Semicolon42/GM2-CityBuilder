/// @description Baseline logic

if (destination == noone) {
	speed = 0
	if (countdown > 0) countdown -= 1
	
	// If there is no destination within the countdown, turn into an emigrant and leave
	if (countdown == 0) {
		scr_find_random_empty_house()
		if (destination == noone) {
			instance_create_depth(x,y,-1,obj_person_emigrant)
			instance_destroy(id, true)
		}
	}
} else if (!instance_exists(destination)) { 
	// If the destination no longer exists, set it to noone
	destination = noone
} else {
	
	// Move towards the destination
	direction = point_direction(x, y, destination.x, destination.y)
	speed = walk_speed
	
	// 
	dist_to_dest = point_distance(x, y, destination.x, destination.y)
	if(dist_to_dest <= walk_speed * 2) {
		result = scr_add_person_to_house(destination, self.id)
		if (result = true) {
		    instance_destroy(id, true)
	    } else {
			scr_find_random_empty_house()
		}
	}
}

