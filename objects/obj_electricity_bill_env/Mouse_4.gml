var dist = point_distance(obj_player.x, obj_player.y, obj_electricity_bill_env.x, obj_electricity_bill_env.y)

if dist < 800 {
	global.player_movement_allowed = false 
	global.previous_room = Room1 //room the object is at
	
	
	room_goto(Room1_Electricity_Bill) // room the object will redirect the player to (usually a "zoomed" version of the asset)
}