/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_space)) {
	var sound_id = Dark_Fantasy_Studio__Ex_nihilo__seamless_
	var sound_id_secondary = Dark_Fantasy_Studio__Shadow_forest__seamless_
	if (audio_is_playing(sound_id)) {
		var position = audio_sound_get_track_position(sound_id_secondary)
		audio_stop_sound(sound_id)
		audio_sound_set_track_position(sound_id, position)
	} else {
		audio_play_sound(sound_id, 0, true)
	}
}

if (keyboard_check_pressed(vk_enter)) {
	var sound_id = Dark_Fantasy_Studio__Shadow_forest__seamless_
	var sound_id_secondary = Dark_Fantasy_Studio__Ex_nihilo__seamless_
	if (audio_is_playing(sound_id)) {
		audio_stop_sound(sound_id)
	} else {
		var position = audio_sound_get_track_position(sound_id_secondary)
		audio_play_sound(sound_id, 0, true)
		audio_sound_set_track_position(sound_id, position)
	}
}