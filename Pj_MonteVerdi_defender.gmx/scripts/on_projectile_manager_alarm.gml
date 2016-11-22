var random_index = irandom( array_length_1d( tiles ) - 1 );
var tile_index = random_index;

if( tile_index < 0 ) {
    tile_index = 0;
}

if( tile_index >= array_length_1d( tiles ) ) {
    tiles_index = array_length_1d( tiles ) - 1;
}

var tile_id = tiles[tile_index];
with( tile_id ) {
    trigger_projectile = true;
}
