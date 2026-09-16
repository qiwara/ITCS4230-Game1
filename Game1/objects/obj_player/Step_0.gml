y_speed += 0.1;
x_speed = 0;

if (keyboard_check_pressed(ord("R"))) {
	game_restart();
}

if (keyboard_check(ord("A")) or keyboard_check(vk_left)) {
	x_speed = -3;
}
if (keyboard_check(ord("D")) or keyboard_check(vk_right)) {
	x_speed = +3;
}

if place_meeting(x, y+1, obj_tiles) {
	y_speed = 0;
	if (keyboard_check(vk_space)) {
		y_speed = -5;
	}
}

move_and_collide(x_speed, y_speed, obj_tiles);