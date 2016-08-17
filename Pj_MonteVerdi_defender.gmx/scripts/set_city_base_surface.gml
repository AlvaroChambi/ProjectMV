if( !surface_exists( city_base_surface ) ) {
    if( !full_screen ) {
        city_base_surface = surface_create( view_wview[ 0 ], view_hview[ 0 ] );
        view_surface_id[ 0 ] = city_base_surface;
    } else {      
        city_base_surface = surface_create( view_wview[ 1 ], view_hview[ 1 ] )    
        view_surface_id[ 1 ] = city_base_surface;
    }
}

if( full_screen ) {
    city_base_surface = surface_create( view_wview[ 1 ], view_hview[ 1 ] )    
    view_surface_id[ 1 ] = city_base_surface;
}   
