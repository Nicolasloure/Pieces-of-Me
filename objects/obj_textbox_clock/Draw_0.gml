var box_color = c_black
var box_border = c_white
var box_text_color = c_white

var x_pos = 230
var y_pos = room_height - 100
var width = 1460
var height = 100
var border_round = 10

draw_set_color(box_color)
draw_roundrect(x_pos, y_pos, (x_pos + width), (y_pos + height), false)

var message = "Nothing seems to happen..." // text when wrong answer

if global.clock_puzzle_correct_answer {
	message = "Now it looks right..." // text when right answer

}

draw_set_color(box_text_color)
draw_text((x_pos + 10), (y_pos + height / 2), message)