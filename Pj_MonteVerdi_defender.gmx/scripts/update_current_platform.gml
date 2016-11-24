if( vertical_collision == Side.COLLISION_DOWN ) {
    if( current_platform == noone ) {
        current_platform = vertical_collided_object;
        current_platform.sustain = true;  
    } else {
        if( vertical_collided_object != current_platform ) {
            obj_platform_orpheus.sustain = false;
            current_platform = noone;
        }
    }
} else {
    obj_platform_orpheus.sustain = false;
    if( current_platform != noone) {
        current_platform = noone;    
    }
}

