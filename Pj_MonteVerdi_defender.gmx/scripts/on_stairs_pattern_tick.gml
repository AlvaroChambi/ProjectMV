if( !sequence_finished ) {
    var num_tiles = array_length_1d( tiles ); 
    var current_index = tile_index + current_offset;
    if( current_index >= num_tiles ) {
        current_index = current_index - num_tiles;
    }
    var tile_id = tiles[current_index];
    
    with( tile_id ) {
        trigger_projectile = true;
    }
    
    current_offset++;
    alarm[0] = bullet_time_gap;    
} else {
    current_offset = 0;
}
