/* the ground is defined by a set of tiles, handles tiles animation logic*/
//base definition
tile_object = waving_tile_obj;
tile_sprite = wave_up_sprite;
num_tiles = 9;
gap = 0; //gap between tiles

//Create all the defined tile in the correct position
for( i = 0; i < num_tiles; i++ ) {
    tiles[i] = instance_create( x + ( sprite_get_width(tile_sprite) / 2 ) + i*( sprite_get_width(tile_sprite) + gap ), y, tile_object );
}

//define an animation for the builded tiles
animation = instance_create( 0, 0, waving_animation );
with( animation ) {
    tiles = other.tiles;
}

shooting_manager = instance_create(0, 0, waves_manager);
with( shooting_manager ) {
    tiles = other.tiles;
}
