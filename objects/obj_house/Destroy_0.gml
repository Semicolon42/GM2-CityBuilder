/// @description Insert description here
// You can write your code in this editor
repeat(people) {
	var r, rx, ry;
	r = 20
	rx = random(r)-r/2
	ry = random(r)-r/2
	imigrant = instance_create_depth(x+rx, y+ry,-1,obj_person_imigrant)
}