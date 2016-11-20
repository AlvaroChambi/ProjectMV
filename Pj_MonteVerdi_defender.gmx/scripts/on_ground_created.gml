/* the ground is defined by a set of tiles, handles tiles animation logic*/
//base definition
tile_object = electric_obj;
tile_sprite = electric_sprite;
num_tiles = 12;
gap = -10; //gap between tiles

//Create all the defined tile in the correct position
for( i = 0; i < num_tiles; i++ ) {
    tiles[i] = instance_create( x + i*( sprite_get_width(tile_sprite) + gap ), y, tile_object );
}

//define an animation for the builded tiles
animation = instance_create( 0, 0, waving_animation );
with( animation ) {
    tiles = other.tiles;
}

shooting_manager = instance_create(0, 0, projectiles_manager);
with( shooting_manager ) {
    tiles = other.tiles;
}
