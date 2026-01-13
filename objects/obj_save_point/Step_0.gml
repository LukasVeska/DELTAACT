if (place_meeting(x, y, obj_player)){
	ini_open("deltaakt.ini")
	ini_write_real("Save1", "room", room)
	ini_write_real("Save1", "x", obj_player.x)
	ini_write_real("Save1", "y", obj_player.y)
	ini_close()
}