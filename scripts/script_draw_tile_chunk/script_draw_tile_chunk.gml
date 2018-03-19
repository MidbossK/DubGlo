/// @description script_draw_tile_chunk()
/// @param tile
/// @param width
/// @param height
/// @param x
/// @param y

var _tile = argument0;
var _width = argument1 * TILE_WIDTH;
var _height = argument2 * TILE_HEIGHT;
var _x = argument3 * TILE_WIDTH;
var _y = argument4 * TILE_HEIGHT;

for (var _yy = _y; _yy < (_y + _height); _yy += TILE_HEIGHT) {
	for (var _xx = _x; _xx < (_x + _width); _xx += TILE_WIDTH) {
		//show_message("_xx: " + string(_xx) + ", _height: " + string(_height) + ", _yy: " + string(_yy) + ", _width: " + string(_width));
		tilemap_set_at_pixel(global.ground_tilemap_biomes, _tile , _xx, _yy);
		
		if (_tile == FOREST_TILE || _tile == WATER_TILE || _tile == MOUNTAIN_TILE || _tile == LAVA_TILE) {
			instance_create_layer(_xx, _yy, global.ground_layer, object_solid_collider);	
		}
	}
}