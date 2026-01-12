if place_meeting(x ,y , obj_player) and !instance_exists(obj_transition){
	var instantiated = instance_create_depth(0, 0, -999, obj_transition);
	instantiated.target_x = target_x;
	instantiated.target_y = target_y;
	instantiated.target_rm = target_rm;
}
