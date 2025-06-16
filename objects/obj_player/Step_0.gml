/*

// Target coordinates (set these when the mouse is clicked)
if (mouse_check_button_pressed(mb_left)) {
    target_x = mouse_x;
    target_y = mouse_y;
}

// Current position
var dx = target_x - x;
var dy = target_y - y;

// Movement speed
var move_speed = global.char_walking_speed;

// Check if the object needs to move
if (dx != 0 || dy != 0) {
    // Determine the priority based on the distances
    if (abs(dx) > abs(dy)) {
        // Prioritize X-axis movement
        if (abs(dx) > 0) {
            x += sign(dx) * move_speed;
            // Stop at target x-coordinate
            if (abs(target_x - x) < move_speed) {
                x = target_x;
            }
        }
    } else {
        // Prioritize Y-axis movement
        if (abs(dy) > 0) {
            y += sign(dy) * move_speed;
            // Stop at target y-coordinate
            if (abs(target_y - y) < move_speed) {
                y = target_y;
            }
        }
    }

    // After completing the priority axis, move the secondary axis
    if (x == target_x && abs(dy) > 0) {
        y += sign(dy) * move_speed;
        if (abs(target_y - y) < move_speed) {
            y = target_y;
        }
    } else if (y == target_y && abs(dx) > 0) {
        x += sign(dx) * move_speed;
        if (abs(target_x - x) < move_speed) {
            x = target_x;
        }
    }
}

*/

if (alpha > 0) {
    alpha -= 1 / 120; // Diminui a transparência com o tempo
}

if mouse_check_button_pressed(mb_left) {
	alpha = 1
}



var directionX = target_x - x; // Direction on the X-axis based on the target
var directionY = target_y - y; // Direction on the Y-axis based on the target

// Calculate the angle only at the moment of the click
if (mouse_check_button_pressed(mb_left)) {
    global.char_walking_speed = 7;
    target_x = mouse_x;
    target_y = mouse_y;
    
    // Calculate the angle at the moment of the click
    var angle = point_direction(x, y, target_x, target_y);

    // Update the animation based on the angle (locked at the moment of the click)
    if (angle >= 45 && angle < 135) {
        sprite_index = spr_player_walk_up; // Up
    } else if (angle >= 135 && angle < 225) {
        sprite_index = spr_player_walk_left; // Left
    } else if (angle >= 225 && angle < 315) {
        sprite_index = spr_player_walk_down; // Down
    } else {
        sprite_index = spr_player_walk_right; // Right
    }
}

// Check the distance to the target and move
if (global.player_movement_allowed = true) {
    var move_x = target_x - x;
    var move_y = target_y - y;
    var distance = point_distance(x, y, target_x, target_y);

    if (distance > 5) {
        // Check for collision along the path
        var hit = collision_line(x, y, target_x, target_y, obj_wall, true, true);
        
        if (!hit) {
            // No collision, move the character
            move_towards_point(target_x, target_y, global.char_walking_speed);
        } else {
            // Collision detected, stop or adjust position
            speed = 0; // Stop the character if colliding with a wall
        }
    }
}

// Stop the character when reaching the target
if (point_distance(x, y, target_x, target_y) < 5) {
    speed = 0;
}

// Change to idle sprite when speed is zero
if (speed == 0) {
    if (sprite_index == spr_player_walk_up) {
        sprite_index = spr_player_idle_up;
    } else if (sprite_index == spr_player_walk_left) {
        sprite_index = spr_player_idle_left;
    } else if (sprite_index == spr_player_walk_down) {
        sprite_index = spr_player_idle_down_1;
    } else if (sprite_index == spr_player_walk_right) {
        sprite_index = spr_player_idle_right;
    }
}

