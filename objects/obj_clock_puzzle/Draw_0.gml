/* draws the object and the number sprites. 
the first argument from the draw_sprite function below is the sprite strip, with
the numbers going from 0-9. The second argument is the index for each frame
of this strip, that is changed by the "arrow" up and down objs.
*/
draw_self()

xpos = 650
ypos = 430


draw_sprite(spr_clock_numbers, global.clock_puzzle_hours_1, xpos, ypos)
draw_sprite(spr_clock_numbers, global.clock_puzzle_hours_2, xpos + 200, ypos)
draw_sprite(spr_clock_numbers, global.clock_puzzle_minutes_1, xpos + 500, ypos)
draw_sprite(spr_clock_numbers, global.clock_puzzle_minutes_2, xpos + 700, ypos)

