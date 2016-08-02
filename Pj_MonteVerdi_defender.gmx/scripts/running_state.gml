event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        if ( horizontal_speed > 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        if( horizontal_speed < 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_LEFT_UNPRESSED:
    case ON_RIGHT_UNPRESSED:
        friction_vector.x = -impulse_vector.x;
        impulse_vector.x = OFF;
        break;
    case ON_SPACE_PRESSED:
        impulse_vector.y = UP;
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.IDLE_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = Run_2;
        break;
}
