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
    case OrpheusState.DIVING_STATE:
        diving_state( ON_ENTER_STATE );
        break;
}
