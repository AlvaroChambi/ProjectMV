if( !loading ) {
    if( current_view == 0 ) {
        draw_surface_ext( surface_city_base, ( display_get_gui_width() - surface_width/4 )/2 , 0, 0.25, 0.25, 0, c_white, 1 );
    } else {
        draw_surface_ext( surface_city_base, ( display_get_gui_width() - surface_width/2 )/2 , 0, 0.5, 0.5, 0, c_white, 1 );
    }
}
