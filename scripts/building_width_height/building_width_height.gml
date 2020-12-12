// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_building_width(obj){
	switch(obj) {
	    case obj_house:
		    return 1
		case obj_farm:
		    return 2
		default:
		    return 1
	}
}

function scr_building_height(obj){
	switch(obj) {
	    case obj_house:
		    return 1
		case obj_farm:
		    return 2
		default:
		    return 1
	}
}