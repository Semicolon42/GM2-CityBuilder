/// @description Insert description here
// You can write your code in this editor

var view_w=view_get_wport(view_current), view_h=view_get_hport(view_current);
var w = view_w/2, h=view_h/6
var xx=view_w/2, yy=view_h*3/4;
var border = 2
var margin = 4



// draw outline
draw_rectangle_color(xx-w/2-border, yy-h/2-border, xx+w/2+border, yy+h/2+border, c_white, c_white, c_white, c_white, false)
// draw inside box
draw_rectangle_color(xx-w/2, yy-h/2, xx+w/2, yy+h/2, c_black, c_black, c_black, c_black, false)

// draw text
var text_string;
var strh = string_height(text )
draw_text_ext(xx-w/2+margin, yy-h/2+margin,text ,strh, w-margin)