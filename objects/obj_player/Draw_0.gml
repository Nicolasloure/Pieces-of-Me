// Creates a circle whatever the player clicks to show when they are going
// Replace it with a proper sprite in future versions

draw_self();

//draw_circle(target_x, target_y, 30, 0)

draw_set_alpha(alpha); // Define a transparência da bolinha
draw_circle(target_x, target_y, 30, 0); // Desenha a bolinha
draw_set_alpha(1);