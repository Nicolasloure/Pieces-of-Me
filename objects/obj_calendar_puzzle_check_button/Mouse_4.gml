var mouse_click = mouse_check_button_pressed(mb_left);
if mouse_click && my_text != noone {

	instance_destroy(my_text);
	my_text = noone;
}

// checks if the answer is correct and unables the invisible buttons if so.
if global.calendar_puzzle_year1 = 1 && global.calendar_puzzle_year2 = 9 && global.calendar_puzzle_year3 = 9 && global.calendar_puzzle_year4 = 5 && global.calendar_puzzle_day1 = 2 && global.calendar_puzzle_day2 = 3 && global.calendar_puzzle_month = 2 {
	
	global.calendar_puzzle_solved = true
	global.calendar_puzzle_correct_answer = true
	
	instance_deactivate_object(obj_calendar_puzzle_change_day1)
	instance_deactivate_object(obj_calendar_puzzle_change_day2)
	instance_deactivate_object(obj_calendar_puzzle_change_year1)
	instance_deactivate_object(obj_calendar_puzzle_change_year2)
	instance_deactivate_object(obj_calendar_puzzle_change_year3)
	instance_deactivate_object(obj_calendar_puzzle_change_year4)
	instance_deactivate_object(obj_calendar_puzzle_change_month)
	instance_deactivate_object(obj_calendar_puzzle_check_button)
	my_text = instance_create_layer(230, room_height - 100, "UI", obj_textbox);
	my_text.text =  text[1];
	global.add_item(spr_fragment2, "Right Memory Fragment");
}
else {
	global.calendar_puzzle_correct_answer = false
}
// draws the textbox if different texts depending on the answer
if my_text == noone{

		my_text = instance_create_layer(230, room_height - 100, "UI", obj_textbox);
		my_text.text =  text[0];
}
