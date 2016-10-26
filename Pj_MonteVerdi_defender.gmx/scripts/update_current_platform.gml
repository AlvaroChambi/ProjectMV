if( vertical_collision == Side.COLLISION_DOWN ) {
    if( current_platform == noone ) {
        current_platform = vertical_collided_object;
        current_platform.sustain = true;
        //current_platform.sprite_index = spr_current_platform;    
    } else {
        if( vertical_collided_object != current_platform ) {
            obj_platform_Orpheus.sustain = false;
            obj_platform_Orpheus.sprite_index = spr_platform;
            current_platform = noone;
        }
    }
} else {
    obj_platform_Orpheus.sustain = false;
    //obj_platform_Orpheus.sprite_index = spr_platform;
    if( current_platform != noone) {
        current_platform = noone;    
    }
}

