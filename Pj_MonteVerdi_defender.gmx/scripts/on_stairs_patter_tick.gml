if( bullet_count < num_projectiles ) {  
    bullet_count++;
    var last_tile_index = array_length_1d( tiles );
    var current_tile_index = tile_index;
    //control left overflow of the pattern
    if( current_tile_index > last_tile_index - num_projectiles * 2 ) {
        current_tile_index = last_tile_index - num_projectiles * 2;
    }
    
    current_tile_index = current_tile_index + current_offset * 2;
    
    var tile_id = tiles[current_tile_index];
    with( tile_id ) {
        trigger_projectile = true;
    }
    
    if( !invert ) {
        current_offset++;
    } else {
        current_offset--;
    }
    alarm[0] = bullet_time_gap;    
}
