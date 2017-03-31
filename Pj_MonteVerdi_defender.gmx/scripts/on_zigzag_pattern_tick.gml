if( !sequence_finished ) {
    var num_tiles = array_length_1d( tiles );
    var current_index = tile_index;
    if( forward ) {
        current_index += bullet_gap;
        if( current_index >= num_tiles ) {
            current_index = current_index - num_tiles;
        }
    } else {
        current_index -= bullet_gap;
        if( current_index < 0 ) {
            current_index = current_index + num_tiles;
        }
    }
    
    var tile_id = tiles[current_index];
    with( tile_id ) {
        trigger_projectile = true;
    }
    
    forward = !forward;
    alarm[0] = bullet_time_gap;
}
