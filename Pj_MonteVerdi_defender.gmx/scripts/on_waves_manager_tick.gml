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
    //delete previous projectile pattern
    with( current_wave_frame ) {
        with( current_wave ) {
            with( pattern ) {
                instance_destroy();
            }
        }
    }
    var tick_lenght = wave_lenght;
    //update frame wave and pattern
    current_wave_frame = frame;
    with( current_wave_frame ) {
        with( tick_pattern ) {
            tiles = current_tiles;
            tick_lenght = num_projectiles * bullet_time_gap;
        }
        with( current_wave ) {
            wave_tick = current_wave_tick;
            tiles = current_tiles;
            pattern = other.tick_pattern;
        }
        
        //update global variables
        with( moving_view ) {
            vertical_speed = other.view_speed;
        }
        global.bullet_speed = bullet_speed;
    }
    
    //update wave_lenght
    wave_lenght = tick_lenght;
}

//trigger current wave frame tick
with( current_wave_frame ) {
    with( current_wave ) {
        wave_tick = current_wave_tick;
        event_user( 1 );
    }
}

wave_tick++;
//offset added to actually give time to the actual pattern to finish
alarm[0] = wave_lenght + 1;
