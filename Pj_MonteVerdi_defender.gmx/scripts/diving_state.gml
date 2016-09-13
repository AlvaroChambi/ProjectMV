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
        if( jump_available ) {
            vertical_speed = -jump_initial_speed;
            jump_avalable = false;
        } else {
            spawn_platform( 20, false );
        }
        break;
    case ON_GROUND_COLLISION:
        enter_state( OrpheusState.IDLE_STATE );
        jump_available = true;
        jump_timer = jump_timer_default;
        break;
    case ON_ORPHEUS_STOPPED:
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = InAir_1;
        break;
}
