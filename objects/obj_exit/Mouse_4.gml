/* will send the player to the previous room
they were in (global.previous_room is defined in the 
interactable obj in the "main" map, that I usually named with 
an _env)
*/

global.player_movement_allowed = false
room_goto(global.previous_room)
global.player_movement_allowed = true
obj_player.speed = global.char_walking_speed
obj_player.image_alpha = 1
global.inventory_visible = true