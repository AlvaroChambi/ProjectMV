state = argument0;

switch( state ) {
    case OrpheusState.IDLE_STATE:
        idle_state( ON_ENTER_STATE );
        break;
    case OrpheusState.RUNNING_STATE:
        running_state( ON_ENTER_STATE );
        break;
    case OrpheusState.JUMPING_STATE:
        jumping_state( ON_ENTER_STATE );
        break;
}

// on entering a new state we always check if there is a key on hold and trigger 
// a event for that key on the new state
if( impulse_vector.x == LEFT ) {
    on_event_received( ON_LEFT_PRESSED );
} else if( impulse_vector.x == RIGHT ) {
    on_event_received( ON_RIGHT_PRESSED );
}

