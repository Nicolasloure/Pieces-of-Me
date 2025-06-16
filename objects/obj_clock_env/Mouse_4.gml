var dist = point_distance(obj_player.x, obj_player.y, obj_clock_env.x, obj_clock_env.y)

if dist < 1400 {
		obj_player.speed = 0
	global.player_movement_allowed = false
	global.previous_room = Room1
	
	
	room_goto(Room1_Clock_Puzzle)
}