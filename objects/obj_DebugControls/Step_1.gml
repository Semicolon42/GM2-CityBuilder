/// @description Insert description here
// You can write your code in this editor
depth = -9999999
if (room != rm_DebugMain) {
	// Transition back to the debug room
	if( keyboard_check_pressed(vk_escape) ) {
		room_goto(rm_DebugMain)
	}
}
timer = (timer + .2) mod (255)
image_blend = make_color_hsv(timer,255,255)