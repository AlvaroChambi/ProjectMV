if display_get_orientation() = display_portrait {
   tilt_x = device_get_tilt_x();
   tilt_y = device_get_tilt_y(); 
   
   if( abs(tilt_x) > tilt_threshold ) {
        if( tilt_x > 0 ) {
            if( right_pressed ) {
                with( obj_orpheus ) {
                    on_event_received(ON_LEFT_PRESSED);
                }
            } else {
                right_pressed = true;
            }
                
        } else {
            if( left_pressed ) {
                with( obj_orpheus ) {
                    on_event_received(ON_RIGHT_PRESSED);
                }
            } else {
                left_pressed = true;
            }
        }
   } else {
        if( right_pressed ) {
            right_pressed = false;
            with( obj_orpheus ) {
            on_event_received(ON_LEFT_UNPRESSED);
            }
        }
        
        if( left_pressed ) {
            left_pressed = false;
            with( obj_orpheus ) {
            on_event_received(ON_RIGHT_UNPRESSED);
            }
        }
   }
}
