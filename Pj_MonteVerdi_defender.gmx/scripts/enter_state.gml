state = argument0;

switch( state ) {
    case OrpheusState.IDLE_STATE:
        show_message( "idle state" );
        idle_state( ON_ENTER_STATE );
        break;
    case OrpheusState.RUNNING_STATE:
        show_message( "running state" );
        running_state( ON_ENTER_STATE );
        break;
    case OrpheusState.JUMPING_STATE:
        show_message( "jumping state" );
        jumping_state( ON_ENTER_STATE );
        break;
}
