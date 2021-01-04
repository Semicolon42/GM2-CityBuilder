/// @description Insert description here
// You can write your code in this editor
var temp_color = draw_get_color()
draw_set_color(c_white)
draw_self()
var w=string_width(button_text), h=string_height(button_text)
draw_text(x-w/2,y-h/2,button_text)

draw_set_color(temp_color)