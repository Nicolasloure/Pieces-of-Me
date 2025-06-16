/* draws the obj and the number sprites (need to change it when the designers
share the correct sprites)
*/

draw_self()

var y_pos_year = 145
var y_pos_day = 400

draw_sprite(spr_numbers_calendar, global.calendar_puzzle_year1, 575, y_pos_year)
draw_sprite(spr_numbers_calendar, global.calendar_puzzle_year2, 740, y_pos_year)
draw_sprite(spr_numbers_calendar, global.calendar_puzzle_year3, 920, y_pos_year)
draw_sprite(spr_numbers_calendar, global.calendar_puzzle_year4, 1080, y_pos_year)

draw_sprite(spr_numbers_calendar, global.calendar_puzzle_day1, 660, y_pos_day)
draw_sprite(spr_numbers_calendar, global.calendar_puzzle_day2, 990, y_pos_day)

draw_sprite(spr_months_calendar, global.calendar_puzzle_month, 825, 625)