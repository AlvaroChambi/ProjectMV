if( bullet_count < num_projectiles ) {
    bullet_count++;
    var tile_id = tiles[tile_index];
    with( tile_id ) {
        trigger_projectile = true;
    }
    alarm[0] = bullet_time_gap;    
}

