
var dist = point_distance(obj_player.x, obj_player.y, obj_hallway_drawing_env.x, obj_hallway_drawing_env.y)

if dist < 950 {
	global.player_movement_allowed = false 
	global.previous_room = Hallway //room the object is at
	
	
	room_goto(Hallway_Drawing) // room the object will redirect the player to (usually a "zoomed" version of the asset)
}