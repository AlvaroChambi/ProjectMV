event = argument0;

switch( event ) {
    case ON_LEFT_PRESSED:
        ds_map_replace( impulse_vector, "x_axis", LEFT );
        image_xscale = -abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_RIGHT_PRESSED:
        ds_map_replace( impulse_vector, "x_axis", RIGHT );
        image_xscale = abs( image_xscale );
        enter_state( OrpheusState.RUNNING_STATE );
        break;
    case ON_SPACE_PRESSED:
        vertical_speed = -jump_initial_speed;
        enter_state( OrpheusState.JUMPING_STATE );
        break;
    case ON_ENTER_STATE:
        sprite_index = Idle_1;
        ds_map_replace( impulse_vector, "x_axis", OFF );
        ds_map_replace( friction_vector, "x_axis", OFF );
        break;
}
