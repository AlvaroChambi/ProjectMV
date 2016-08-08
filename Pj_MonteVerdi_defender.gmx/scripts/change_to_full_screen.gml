if view_visible[ 1 ] {
    full_screen = true;
    view_visible[ 1 ] = false;
    view_visible[ 0 ] = true;       
    room_view_width_on_screen = view_wview[ 0 ]/2;
    room_view_height_on_screen = view_hview[ 0 ]/2;
 } else {
    full_screen = true;
    view_visible[ 0 ] = false;
    view_visible[ 1 ] = true; 
    room_view_width_on_screen = view_wview[ 0 ];
    room_view_height_on_screen = view_hview[ 0 ];
 }

