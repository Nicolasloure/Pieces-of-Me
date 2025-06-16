// checks if the answer is correct and unables the arrows if so.
var mouse_click = mouse_check_button_pressed(mb_left);
if mouse_click && my_text != noone {

	instance_destroy(my_text);
	my_text = noone;
}

if global.clock_puzzle_hours_1 = 1 && global.clock_puzzle_hours_2 = 1
&& global.clock_puzzle_minutes_1 = 1 && global.clock_puzzle_minutes_2 = 5 {

	global.clock_puzzle_correct_answer = true
	global.clock_puzzle_solved = true
	
	instance_deactivate_object(obj_arrow_hour1_down)
	instance_deactivate_object(obj_arrow_hour1_up)
	instance_deactivate_object(obj_arrow_hour2_down)
	instance_deactivate_object(obj_arrow_hour2_up)
	instance_deactivate_object(obj_arrow_minute1_down)
	instance_deactivate_object(obj_arrow_minute1_up)
	instance_deactivate_object(obj_arrow_minute2_down)
	instance_deactivate_object(obj_arrow_minute2_up)
	// instance_deactivate_object(self)
	my_text = instance_create_layer(230, room_height - 100, "UI", obj_textbox);
	my_text.text =  text[1];
	global.add_item(spr_fragment1, "Left Memory Fragment");
}


else {
	global.clock_puzzle_correct_answer = false
}
// depending if global.clock_puzzle_correct_answer is true or false, creates
//the textbox below with a different text (see obj_textbox_clock)

if my_text == noone{

		my_text = instance_create_layer(230, room_height - 100, "UI", obj_textbox);
		my_text.text =  text[0];
}

	
