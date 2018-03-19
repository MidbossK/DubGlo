/// @description Draw debug text

draw_set_color(c_white);
draw_rectangle(TILE_WIDTH * 10, TILE_HEIGHT * 1, TILE_WIDTH * 14, TILE_HEIGHT * 4, false)

draw_set_color(c_black);
draw_text((TILE_WIDTH * 10) + 20, (TILE_HEIGHT * 1) + 20, "Player X: " + string(object_player.x));
draw_text((TILE_WIDTH * 10) + 20, (TILE_HEIGHT * 1) + 40, "Player Y: " + string(object_player.y));
