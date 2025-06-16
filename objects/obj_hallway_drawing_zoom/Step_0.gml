var mouse_click = mouse_check_button_pressed(mb_left);

	
if mouse_click && my_text != noone {

	instance_destroy(my_text);
	my_text = noone;
}

