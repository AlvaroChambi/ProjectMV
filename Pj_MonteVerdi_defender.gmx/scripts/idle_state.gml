event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        image_xscale = -abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        image_xscale = abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_SPACE_PRESSED:
        vertical_speed = -jump_initial_speed;
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = Idle_1;
        impulse_vector.x = OFF;
        friction_vector.x = OFF;
        break;
}
