var random_index = irandom_range( -max_offset, max_offset );
/*while( random_index == 0 ) {
    random_index = irandom_range( -max_offset, max_offset );
}*/

var current_tile_index = last_tile_index + random_index;
if( current_tile_index > ( array_length_1d( tiles ) - 1 ) || current_tile_index < 0 ) {
    current_tile_index = last_tile_index - random_index;
}
last_tile_index = current_tile_index;
    
with( pattern ) {
    tile_index = current_tile_index;
}
