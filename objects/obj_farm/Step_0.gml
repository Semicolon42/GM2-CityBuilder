/// @description Insert description here
// You can write your code in this editor
image_speed = 0
image_index = round(sprite_get_number(sprite_index) * progress / PROGRESS_MAX)
progress += ceil(PRODUCTION_RATE * workers / WORKERS_MAX)

if progress > PROGRESS_MAX {
     progress = 0
	 obj_city_controller.total_food += FOOD_INCREMENT
}