if( blink_tick ) {
    shader_set( invert_colors_shader );
    draw_surface_ext( application_surface, (displayWidth - room_width*scaleH)/2, 0, scaleH, scaleH, 0, c_white, 1 );
    shader_reset();
} else {
    draw_surface_ext( application_surface, (displayWidth - room_width*scaleH)/2, 0, scaleH, scaleH, 0, c_white, 1 );
}
