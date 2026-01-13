// variables
global.start_room = rm_1;
global.start_x = 160;
global.start_y = 140;

global.new_game = flase;

if (file_exists("deltaakt.ini")){
	ini_open("deltaakt.ini")
	global.start_room = ini_read_real("Save1", "room", rm_1)
	global.start_room = ini_read_real("Save1", "x", 114)
	global.start_room = ini_read_real("Save1", "y", 190)
	ini_close()
}