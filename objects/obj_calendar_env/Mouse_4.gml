var dist = point_distance(obj_player.x, obj_player.y, obj_calendar_env.x, obj_calendar_env.y)

if dist < 1400 {
	global.player_movement_allowed = false
	global.previous_room = Room1
	

	room_goto(Room1_Calendar_Puzzle)
}