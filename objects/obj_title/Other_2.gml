// variables
global.start_room = rm_1;
global.start_x = 160;
global.start_y = 150;

global.new_game = false;
global.title_buttons = false;
global.party_exists = false;
global.entered_menu_room = false;

// party ids
global.p0 = 0 //Susie
global.p1 = 1 //Kris
global.p2 = 2 //Ralsei

//room ids
global.rm0 = 0
global.rm1 = 1
global.rm2 = 2
global.rm3 = 3
global.rm4 = 4
global.rm5 = 5
global.rm6 = 6
global.rm7 = 7
global.rm8 = 8
global.rm9 = 9



if (file_exists("deltaakt.ini")){
	instance_create_depth(20,40,100, obj_buttons_cont)
	
	ini_open("deltaakt.ini")
	global.start_room = ini_read_real("Save1", "room", rm_1);
	global.start_x = ini_read_real("Save1", "x", 114);
	global.start_y = ini_read_real("Save1", "y", 200);
	global.part_member_1 = ini_read_real("Save1", "Party1", global.p0)
	global.part_member_2 = ini_read_real("Save1", "Party2", global.p1)
	global.part_member_1_follow_distance = ini_read_real("Save1", "Party1 Distance", 40)
	global.part_member_2_follow_distance = ini_read_real("Save1", "Party2 Distance", 80)
	ini_close()
} else{
	instance_create_depth(20,40,100, obj_buttons)
}


if(global.start_room = 8){
	global.start_room = rm_8
}
if(global.party_member_1 = 8){
	global.start_room = rm_8
}