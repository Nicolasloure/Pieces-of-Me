// if Clock Puzzle is solved, will keep the arrows unabled, and will show the 
//correct time every time the player opens the Room

if global.clock_puzzle_solved = true {

	instance_deactivate_object(obj_arrow_hour1_down)
	instance_deactivate_object(obj_arrow_hour1_up)
	instance_deactivate_object(obj_arrow_hour2_down)
	instance_deactivate_object(obj_arrow_hour2_up)
	instance_deactivate_object(obj_arrow_minute1_down)
	instance_deactivate_object(obj_arrow_minute1_up)
	instance_deactivate_object(obj_arrow_minute2_down)
	instance_deactivate_object(obj_arrow_minute2_up)
	instance_deactivate_object(obj_clock_puzzle_check_button)
	
		global.clock_puzzle_hours_1 = 1
	global.clock_puzzle_hours_2 = 1

	global.clock_puzzle_minutes_1 = 1
	global.clock_puzzle_minutes_2 = 5
	
}
