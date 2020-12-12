/// @description Insert description here
// You can write your code in this editor
var w = camera_get_view_width(view_camera[0])
var h = camera_get_view_height(view_camera[0])
var scale = camera_get_view_width(view_current) / camera_get_view_width(view_camera[0])
draw_set_alpha(.5)
draw_rectangle_color((w - GUI_WIDTH)*scale, 0, w*scale, h*scale, c_purple, c_purple, c_purple, c_purple, false)
draw_set_alpha(1)
draw_text(0,0,"gui x:" + string(device_mouse_x_to_gui(0)))
draw_text(0,20,"x:" + string(x))
draw_text(0,40,"mouse_x:" + string(mouse_x))
draw_text(0,60,"mouse_x-w:" + string(mouse_x - camera_get_view_x(view_current)))
draw_text(0,80,"thres:" + string(w - GUI_WIDTH))
draw_text(0,100,"width:" + string(w))