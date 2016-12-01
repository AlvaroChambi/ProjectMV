var tile_id = tiles[tile_index];
if( !sequence_finished ) {
    with( tile_id ) {
        trigger_projectile = true;
    }
    alarm[0] = bullet_time_gap; 
}
