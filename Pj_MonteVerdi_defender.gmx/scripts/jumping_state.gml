event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_GROUND_COLLISION:
        enter_state( OrpheusState.IDLE_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = InAir_3;
        break;
}
