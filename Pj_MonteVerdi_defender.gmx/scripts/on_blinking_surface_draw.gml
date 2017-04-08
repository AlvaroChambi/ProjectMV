if( blink_tick ) {
    shader_set( invert_colors_shader );
    draw_surface( application_surface, 0 ,0 );
    shader_reset();
} else {
    draw_surface( application_surface, 0 ,0 );
}
