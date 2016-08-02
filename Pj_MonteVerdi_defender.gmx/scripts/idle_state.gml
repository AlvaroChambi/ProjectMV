event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        impulse_vector.x = LEFT;
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        impulse_vector.x = RIGHT;
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_SPACE_PRESSED:
        impulse_vector.y = UP;
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = Idle_1;
        impulse_vector.x = OFF;
        friction_vector.x = OFF;
        break;
}
