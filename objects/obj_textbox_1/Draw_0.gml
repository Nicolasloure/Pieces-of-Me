var box_color = c_black
var box_border = c_white
var box_text_color = c_white

var x_pos = obj_player.x + 100
var y_pos = obj_player.y - 450
var width = 650
var height = 180
var border_round = 10

draw_set_color(box_color)
draw_roundrect(x_pos, y_pos, (x_pos + width), (y_pos + height), false)

//page_limit = array_length(text)

// Typing the text
var text_lenght = string_length(text)

if index <= text_lenght {
	word = string_copy(text, 1, index);
	index++;
}

draw_set_color(box_text_color)
draw_set_font(fnt_text)
draw_text_ext((x_pos + 30), y_pos + 20, word, 50, width - 30)
draw_set_font(-1)