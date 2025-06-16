var dist = point_distance(obj_player.x, obj_player.y, obj_living_room_tickets_env.x,  obj_living_room_tickets_env.y)

if dist < 800 {
	global.player_movement_allowed = false
	global.previous_room = Living_Room
	

	room_goto(Living_Room_Tickets)
}