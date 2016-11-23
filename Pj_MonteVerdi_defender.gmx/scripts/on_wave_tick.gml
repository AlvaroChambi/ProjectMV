current_tempo_tick++;
if( current_tempo_tick == tempo ) {
    current_tempo_tick = 0;
    
    var random_index = irandom( array_length_1d( tiles ) - 1 );
    var current_tile_index = random_index;
    
    if( current_tile_index < 0 ) {
        current_tile_index = 0;
    }
    
    if( current_tile_index >= array_length_1d( tiles ) ) {
        current_tile_index = array_length_1d( tiles ) - 1;
    }
    
    var pattern = instance_create( 0, 0, stairs_pattern );
    
    if( wave_tick >= 7 && wave_tick < 15) {
        with( pattern ) {
            tile_index = current_tile_index;
            tiles = other.tiles;
            num_projectiles = 4;
            bullet_time_gap = 10;
        }
    } else if( wave_tick >= 15 ) {
        tempo = 1;
        with( pattern ) {
            tile_index = current_tile_index;
            tiles = other.tiles;
            num_projectiles = 4;
            bullet_time_gap = 10;
        }
    } else {
        with( pattern ) {
            tile_index = current_tile_index;
            tiles = other.tiles;
        }
    }
}
alarm[0] = wave_lenght;
wave_tick++;
