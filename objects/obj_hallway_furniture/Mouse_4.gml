var dist = point_distance(obj_player.x, obj_player.y, obj_hallway_furniture.x, obj_hallway_candle.y)

// if dist < 1500 {
	global.player_movement_allowed = false 
	my_text = instance_create_layer(230, room_height - 100, "UI", obj_textbox);
	my_text.text =  text;
//}