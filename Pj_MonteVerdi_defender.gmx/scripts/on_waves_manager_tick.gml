var current_wave_tick = wave_tick;
var current_tiles = tiles;
var frame = noone;
var frame_update = false;

//Check if we have a valid configuration for the next tick
with( configuration ) {
    if( other.current_wave_index < array_length_1d( key_wave_frames ) ) {
        frame = key_wave_frames[other.current_wave_index];  
        with( frame ) {
            if( frame_tick == current_wave_tick ) {
                frame_update = true;
            }
        }
    }
}

//update the frame configuration if needed
if( frame_update ) {
    current_wave_index++;
    with( current_wave_frame ) {
        with( current_wave ) {
            with( pattern ) {
                instance_destroy();
            }
        }
    }
    current_wave_frame = frame;
    with( current_wave_frame ) {
        with( tick_pattern ) {
            tiles = current_tiles;
        }
        with( current_wave ) {
            wave_tick = current_wave_tick;
            tiles = current_tiles;
            pattern = other.tick_pattern;
        }
    }
}

//trigger current wave frame tick
with( current_wave_frame ) {
    with( current_wave ) {
        event_user( 1 );
    }
}


wave_tick++;
alarm[0] = wave_lenght;
