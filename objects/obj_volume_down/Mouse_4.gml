/*
if global.clock_puzzle_minutes_2 > 0 {
	global.clock_puzzle_minutes_2 -= 1
}
else {
	global.clock_puzzle_minutes_2 = 9
}
*/

global.volume -= 1
global.volume=clamp(global.volume,0,10)