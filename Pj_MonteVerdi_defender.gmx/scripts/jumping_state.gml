event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        image_xscale = -abs( image_xscale );
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        image_xscale = abs( image_xscale );
        enter_state( OrpheusState.DIVING_STATE );
        break;
    case ON_GROUND_COLLISION:
        enter_state( OrpheusState.IDLE_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = InAir_1;
        break;
}
