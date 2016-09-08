if( !surface_exists( surface_city_base ) ) {
    surface_width = view_wview[ 0 ];
    surface_height = view_hview[ 0 ];
    
    display_height = display_get_height();
    gui_height = display_get_gui_height();
    
    surface_display_ratio = display_height/surface_height;
    surface_gui_ratio = gui_height/surface_height;
       
    surface_city_base = surface_create( surface_width, surface_height );
    view_surface_id[ 0 ] = surface_city_base;
}
