// if Calendar Puzzle is solved, will keep the buttons unabled, and will show the 
//correct date every time the player opens the Room

if global.calendar_puzzle_solved {
		instance_deactivate_object(obj_calendar_puzzle_change_day1)
		instance_deactivate_object(obj_calendar_puzzle_change_day2)
		instance_deactivate_object(obj_calendar_puzzle_change_year1)
		instance_deactivate_object(obj_calendar_puzzle_change_year2)
		instance_deactivate_object(obj_calendar_puzzle_change_year3)
		instance_deactivate_object(obj_calendar_puzzle_change_year4)
		instance_deactivate_object(obj_calendar_puzzle_change_month)
		instance_deactivate_object(obj_calendar_puzzle_check_button)
		
		global.calendar_puzzle_year1 = 1
		global.calendar_puzzle_year2 = 9
		global.calendar_puzzle_year3 = 9
		global.calendar_puzzle_year4 = 5
		
		global.calendar_puzzle_day1 = 2
		global.calendar_puzzle_day2 = 3
		
		global.calendar_puzzle_month = 2
}