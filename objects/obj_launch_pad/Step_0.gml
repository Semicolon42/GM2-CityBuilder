/// @description Insert description here
// You can write your code in this editor
if (obj_city_controller.total_people < obj_city_controller.total_housing_available)
    imigrant_time -= 1
	
if (imigrant_time <= 0) {
    imigrant_time = IMIGRANT_TIMER_MAX
	
	repeat(IMIGRANTS_PER_WAVE) {
		var r, rx, ry;
		r = 20
		rx = random(r)-r/2
		ry = random(r)-r/2
	    imigrant = instance_create_depth(x+rx, y+ry,-1,obj_person_imigrant)
	}
}