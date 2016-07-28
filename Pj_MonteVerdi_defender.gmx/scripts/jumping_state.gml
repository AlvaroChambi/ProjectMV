event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = -1;
        if ( horizontal_speed > 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = 1;
        if( horizontal_speed < 0 ) {
            impulse_vector.x *= reactivity_percent;
        }
        break;
    case ON_LEFT_UNPRESSED:
        impulse_vector.x = 0;
        friction_vector.y = 1;
        break;
    case ON_RIGHT_UNPRESSED:
        impulse_vector.y = 0;
        friction_vector.y = -1
        break;
    case ON_SPACE_PRESSED:
        break;
    case NULL_EVENT:
        sprite_index = Idle_1;
        break;
}
