key_wave_frames[0] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[0] ) {
    view_speed = 3;
    bullet_speed = 6;
    frame_tick = 0;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 3;
        bullet_time_gap = 10;
    }
}

key_wave_frames[1] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[1] ) {
    view_speed = 4;
    bullet_speed = 8;
    frame_tick = 7;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}
key_wave_frames[2] = instance_create( 0, 0, wave_frame );
with( key_wave_frames[2] ) {
    view_speed = 5;
    bullet_speed = 10;
    frame_tick = 14;
    current_wave = instance_create( 0, 0, random_wave );
    tick_pattern = instance_create( 0, 0, line_pattern );

    with( tick_pattern ) {
        num_projectiles = 4;
        bullet_time_gap = 10;
    }
}
