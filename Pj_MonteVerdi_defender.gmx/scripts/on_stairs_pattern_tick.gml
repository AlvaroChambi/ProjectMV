var last_tile_index = array_length_1d( tiles );
var current_tile_index = tile_index;

//restart pattern
if( bullet_count == 0 ) {
    current_offset = 0;     
}  

//control left overflow of the pattern
if( current_tile_index > last_tile_index - num_projectiles ) {
    current_tile_index = last_tile_index - num_projectiles;
}
    
var tile_id = tiles[current_tile_index + current_offset];
with( tile_id ) {
    trigger_projectile = true;
}
current_offset++;    
alarm[0] = bullet_time_gap;
