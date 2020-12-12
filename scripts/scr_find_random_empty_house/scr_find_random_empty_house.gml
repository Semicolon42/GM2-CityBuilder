// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_find_random_empty_house(){
    var temp_house = noone;
	destination = noone;
	if(instance_number(obj_house) > 0) {
		repeat(3) {
		    temp_house = instance_find(obj_house, irandom(instance_number(obj_house) - 1))
			if(temp_house.people < temp_house.max_people) {
				other.destination = temp_house;
				break;
			}
		}
		if (other.destination == noone) {
			with(obj_house) {
			    if(people < max_people) {
					other.destination = id
					break;
				}
			}
		}
	}
}