/// @function scr_add_person_to_house(object, speed);
/// @param {house} house instance to add to
/// @param {real}  the walker instance trying to go into the house
function scr_add_person_to_house(house, walker){
    if(house.people < house.max_people) {
		house.people += 1
		return true; // person successfully joined the house
	} else {
	    return false; // person failed to join the house
	}
}