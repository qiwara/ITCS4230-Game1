// Gravity
y_speed += 0.1;

//X Speed set to 0 if no movement keys are pressed
x_speed = 0;

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

// Movement speed is placeholder
if (keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	x_speed = -3;
}
if (keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	x_speed = +3;
}

// Jumping
if place_meeting(x, y+1, tilemap) {
	y_speed = 0;
	if (keyboard_check(vk_space)) {
		y_speed = -5;
	}
}

// Collision
move_and_collide(x_speed, y_speed, tilemap);