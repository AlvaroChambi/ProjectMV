if( !loading ) {
    if( !window_get_fullscreen() ) {
        draw_surface_ext( surface_city_base, ( display_get_gui_width() - surface_width * surface_gui_ratio )/2 , 0, surface_gui_ratio, surface_gui_ratio, 0, c_white, 1 );
    } else {
        draw_surface_ext( surface_city_base, ( display_get_gui_width() - surface_width * surface_display_ratio )/2 , 0, surface_display_ratio, surface_display_ratio, 0, c_white, 1 );
    }
}

