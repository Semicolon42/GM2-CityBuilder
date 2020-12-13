/// @description Initializing variables
total_people            = 0
total_food              = 0
total_oxygen            = 0
total_entertainment     = 0
total_people_attracted  = 0
total_housing_available = 0
total_workers_needed    = 0

global.DEBUG = true
global.GRID_SIZE = 32
global.DEPTH_GAME = 0
global.DEPTH_CONTROLLER = -1
global.DEPTH_DEBUG = -100

timer_city_census     = 0
TIMER_CITY_CENSUS_MAX = 100

if(global.DEBUG) {
	total_people_attracted = 100
}

global.GAME_SPEED = 1
global.GAME_SPEED_UNPAUSE = 1
speed_counter = 0
speed_normal_counter = 0