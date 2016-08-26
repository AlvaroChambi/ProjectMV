if( current_view == 0 ) {
    view_visible[ 0 ] = false;
    view_visible[ 1 ] = true;
    surface_free( surface_city_base );
    window_set_fullscreen(true);
} else{
    view_visible[ 1 ] = false;
    view_visible[ 0 ] = true;
    surface_free( surface_city_base );
    window_set_fullscreen(false);
}
