event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        ds_map_replace( impulse_vector, "x_axis", LEFT );
        image_xscale = -abs( image_xscale );
        if ( horizontal_speed > 0 ) {
            ds_map_replace( impulse_vector, "x_axis", LEFT * reactivity_percent );
        }
        break;
    case ON_RIGHT_PRESSED:
        ds_map_replace( impulse_vector, "x_axis", RIGHT );
        image_xscale = abs( image_xscale );
        if( horizontal_speed < 0 ) {
            ds_map_replace( impulse_vector, "x_axis", RIGHT * reactivity_percent );
        }
        break;
    case ON_LEFT_UNPRESSED:
    case ON_RIGHT_UNPRESSED:
        ds_map_replace( impulse_vector, "x_axis", OFF );
        break;
    case ON_GROUND_COLLISION:
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = InAir_1;
        break;
}
