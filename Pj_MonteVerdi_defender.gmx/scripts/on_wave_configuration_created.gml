key_wave_frames[0] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[0] ) {
    view_speed = 2;
    bullet_speed = 5;
    frame_tick = 0;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}

key_wave_frames[1] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[1] ) {
    view_speed = 4;
    bullet_speed = 7;
    frame_tick = 5;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, stairs_pattern );

    with( tick_pattern ) {
        num_projectiles = 3;
        bullet_time_gap = 12;
    }
}
key_wave_frames[2] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[2] ) {
    view_speed = 3;
    bullet_speed = 6;
    frame_tick = 9;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}
/*
key_wave_frames[3] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[3] ) {
    view_speed = 6;
    bullet_speed = 10;
    frame_tick = 14;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, zigzag_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 20;
    }
}

key_wave_frames[4] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[4] ) {
    view_speed = 2;
    bullet_speed = 7;
    frame_tick = 16;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}

key_wave_frames[5] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[5] ) {
    view_speed = 6;
    bullet_speed = 10;
    frame_tick = 21;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, stairs_pattern );

    with( tick_pattern ) {
        num_projectiles = 3;
        bullet_time_gap = 12;
    }
}

key_wave_frames[6] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[6] ) {
    view_speed = 3;
    bullet_speed = 8;
    frame_tick = 25;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}

key_wave_frames[7] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[7] ) {
    view_speed = 6;
    bullet_speed = 10;
    frame_tick = 29;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, zigzag_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 20;
    }
}

key_wave_frames[8] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[8] ) {
    view_speed = 6;
    bullet_speed = 10;
    frame_tick = 31;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 3;
        bullet_time_gap = 10;
    }
}

key_wave_frames[9] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[9] ) {
    view_speed = 5;
    bullet_speed = 9;
    frame_tick = 38;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}*/
