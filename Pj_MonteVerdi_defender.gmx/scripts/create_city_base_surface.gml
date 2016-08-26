if( !surface_exists( surface_city_base ) ) {
    surface_width = view_wview[ current_view ];
    surface_height = view_hview[ current_view ];
    surface_city_base = surface_create( surface_width, surface_height );
    view_surface_id[ current_view ] = surface_city_base;
}
