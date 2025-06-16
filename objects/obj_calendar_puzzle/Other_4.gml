obj_player.speed = 0
obj_player.image_alpha = 0


if global.calendar_puzzle_solved = false {
my_text = instance_create_layer(230, room_height - 200, "UI", obj_textbox);
my_text.text =  text[0];
}
else {
	my_text = instance_create_layer(230, room_height - 200, "UI", obj_textbox);
	my_text.text =  text[1];
}
	