/// @description House creation logic.  Initilizing variables
// Constants
MAX_PEOPLE_INCREMENT = 20
CONSUMPTION_PER_PERSON_INCREMENT = 1
CONSUMPTION_TIMESPAN = 100
BUILD_WIDTH = 1
BUILD_HEIGHT = 1

level      = 1
max_people = MAX_PEOPLE_INCREMENT * level
people     = 0
biome      = noone
people_not_fed = 0

depth = global.DEPTH_GAME