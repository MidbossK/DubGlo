/// @description Load all game objects

// MAIN LAYER
global.ground_layer = layer_create(-1);

script_init_game_object(object_tile_manager);
script_init_game_object(object_input_manager);
script_init_game_object(object_debug_manager);
