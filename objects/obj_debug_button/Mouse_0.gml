/// @description Insert description here
// You can write your code in this editor
if (room_exists(destination_room)) {
	room_goto(destination_room)
} else {
	if (variable_instance_exists(id, "button_text")) {
		show_error("Destination room does not exist for debug button [" + string(button_text) + "]", false);	
	} else {
	    show_error("Destination room does not exist for debug button [<null>]", false);
    }
}