var mouse_click = mouse_check_button_pressed(mb_left);

if mouse_click && my_text != noone  {

	instance_destroy(my_text);
	my_text = noone;
	show_textbox = false;
}


if (show_textbox = true) {
	obj_player.speed = 0
    my_text = instance_create_layer(230, 900, "UI", obj_textbox_1);
    my_text.text = text;
    show_textbox = false; 
}
