state = argument0;

switch( state ) {
    case OrpheusState.IDLE_STATE:
        idle_state( NULL_EVENT );
        break;
    case OrpheusState.RUNNING_STATE:
        running_state( NULL_EVENT );
        break;
    case OrpheusState.JUMPING_STATE:
        jumping_state( NULL_EVENT );
        break;
}
