/// @description Step runs every frame
// control
var up_key = keyboard_check(vk_up)
var down_key = keyboard_check(vk_down)
var left_key = keyboard_check(vk_left)
var right_key = keyboard_check(vk_right)

//movement
if(keyboard_check(vk_shift) or keyboard_check(ord("R")))
{
	move_spd = run_spd
}
else{
	move_spd = walk_spd
}
xspd = (right_key - left_key) * move_spd
yspd = (down_key - up_key) * move_spd

// collision
if (place_meeting(x + xspd, y, obj_collider)){
	xspd = 0
}	

if (place_meeting(x, y + yspd, obj_collider)){
	yspd = 0
}
x += xspd
y += yspd

// animate
if (xspd>0){
	sprite_index = spr_kris_wr
} else if (yspd>0){
	sprite_index = spr_kris_wd 
} else if (xspd<0){
	sprite_index = spr_kris_wl 
} else if (yspd<0){
	sprite_index = spr_kris_wu
}

if (xspd != 0 or yspd != 0){
	image_speed = 1
} else{
	image_speed = 0
	image_index = 0
}