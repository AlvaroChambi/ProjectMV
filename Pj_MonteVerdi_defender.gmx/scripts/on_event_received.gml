event = argument0;

switch( state ) {
    case OrpheusState.IDLE_STATE:
        idle_state( event );
        break;
    case OrpheusState.RUNNING_STATE:
        running_state( event );
        break;
    case OrpheusState.JUMPING_STATE:
        jumping_state( event );
        break;
    case OrpheusState.DIVING_STATE:
        diving_state( event );
        break;
}

