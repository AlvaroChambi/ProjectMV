event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        image_xscale = -abs( image_xscale );
        if ( horizontal_speed > 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        image_xscale = abs( image_xscale );
        if( horizontal_speed < 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_LEFT_UNPRESSED:
    case ON_RIGHT_UNPRESSED:
        impulse_vector.x = OFF;
        break;
    case ON_SPACE_PRESSED:
        vertical_speed = -jump_initial_speed;
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.IDLE_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = Run_1;
        break;
}
