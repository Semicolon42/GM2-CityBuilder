/// @description Insert description here
// You can write your code in this editor



timer_city_census -= 1 * global.GAME_SPEED
if(timer_city_census <= 0) {
	timer_city_census = TIMER_CITY_CENSUS_MAX
	
	total_oxygen           = 0
	total_entertainment    = 0
	
	total_people            = 0
	total_people_working    = 0
	total_housing_available = 0
	total_people_attracted  = 0
	total_workers_needed    = 0
	
	with(obj_house) {
		other.total_people += people
		other.total_housing_available += max_people
		
		other.total_food -= round(people * CONSUMPTION_PER_PERSON_INCREMENT / CONSUMPTION_TIMESPAN * other.TIMER_CITY_CENSUS_MAX)
		if (other.total_food < 0) {
			people_not_fed = round(abs(other.total_food)/CONSUMPTION_PER_PERSON_INCREMENT)
			other.total_food = 0
		} else {
			people_not_fed = 0
		}
	}
	
	with(obj_work_place) {
		workers = 0
		if (other.total_people_working < other.total_people) {
			var diff = other.total_people - other.total_people_working
			workers = min(diff, WORKERS_MAX)
			other.total_people_working += min(diff, WORKERS_MAX)
			other.total_workers_needed += WORKERS_MAX
		}
	}
}


