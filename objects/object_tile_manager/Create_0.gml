/// @description Create Tile Map

// TILE CONSTANTS
#macro TILE_HEIGHT 64
#macro TILE_WIDTH 64
#macro FOREST_TILE 1
#macro MARSH_TILE 2
#macro WATER_TILE 3
#macro MOUNTAIN_TILE 4
#macro LAVA_TILE 5
#macro DESERT_TILE 6
#macro GRASS_TILE 7

// TILEMAP
global.ground_tilemap_biomes = layer_tilemap_create(
	global.ground_layer,
	0,
	0,
	tileset_basic_biomes,
	room_width,
	room_height
);

script_draw_temp_room();