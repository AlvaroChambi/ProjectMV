var random_index = irandom( array_length_1d( tiles ) - 1 );
var current_tile_index = random_index;

if( current_tile_index < 0 ) {
    current_tile_index = 0;
}

if( current_tile_index >= array_length_1d( tiles ) ) {
    current_tile_index = array_length_1d( tiles ) - 1;
}

var pattern = instance_create( 0, 0, line_pattern );
with( pattern ) {
    tile_index = current_tile_index;
    tiles = other.tiles;
}
alarm[0] = wave_lenght;
