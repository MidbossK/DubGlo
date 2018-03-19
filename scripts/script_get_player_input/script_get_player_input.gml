with (object_player) {
	var _targetX = x;
	var _targetY = y;

	if (keyboard_check_released(vk_right)) {
		_targetX = x + TILE_WIDTH;
	} else if (keyboard_check_released(vk_left)) {
		_targetX = x - TILE_WIDTH;
	} else if (keyboard_check_released(vk_down)) {
		_targetY = y + TILE_HEIGHT;
	} else if (keyboard_check_released(vk_up)) {
		_targetY = y - TILE_HEIGHT;	
	} else {
		exit;
	}

	if !(place_meeting(_targetX, _targetY, object_solid_collider)) {
		x = _targetX;
		y = _targetY;
	} else {
		show_message("YOU COLLIDE BOY");
	}
}
