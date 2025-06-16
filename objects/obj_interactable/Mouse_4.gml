/* A staple obj that can be set as parent for any interactable item
that will redirect the player to another Room. You just have to change the obj name
below, to get their x and y coords, and compare with the player's

*/
var dist = point_distance(obj_player.x, obj_player.y, obj_calendar_env.x, obj_calendar_env.y)

if dist < 800 {
	global.player_movement_allowed = false 
	global.previous_room = Room1 //room the object is at
	
	
	room_goto(room_name) // room the object will redirect the player to (usually a "zoomed" version of the asset)
}